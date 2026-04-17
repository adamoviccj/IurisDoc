from fastapi import FastAPI, HTTPException, middleware
from fastapi.middleware.cors import CORSMiddleware
from fastapi.middleware.gzip import GZipMiddleware
from fastapi.responses import FileResponse
from pydantic import BaseModel
from typing import List, Optional
from bs4 import BeautifulSoup
import requests
import json
import os
import csv
import subprocess

from facts_generator.generate_facts import FactsRequest, generate_rdf_facts

BASE_DIR = os.path.dirname(os.path.abspath(__file__))          
PROJECT_ROOT = os.path.dirname(os.path.dirname(BASE_DIR))      
DATA_CASES_PATH = os.path.join(PROJECT_ROOT, "data", "cases")
DATA_LAWS_PATH = os.path.join(PROJECT_ROOT, "data", "laws")

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

app.add_middleware(GZipMiddleware, minimum_size=1000)

filters_cache = {
    "courts": [],
    "years": [],
    "legal_qualifications": []
}

class Reference(BaseModel):
    text: str
    target: str

class Paragraph(BaseModel):
    id: str
    text: str
    references: List[Reference]

class Article(BaseModel):
    id: str
    num: str
    content: List[Paragraph]

class Chapter(BaseModel):
    id: str
    num: str
    title: str
    articles: List[Article]

class LawResponse(BaseModel):
    title: str
    source: str
    date: str
    chapters: List[Chapter]

class JudgmentMetadata(BaseModel):
    act_description: Optional[str] = ""
    legal_qualification: Optional[str] = ""
    victim: Optional[str] = ""
    time_period: Optional[str] = ""
    means_of_commission: Optional[str] = ""
    injury_severity: Optional[str] = ""
    penalty: Optional[str] = ""
    security_measure: Optional[str] = ""
    case_id: str
    court: Optional[str] = ""
    judge: Optional[str] = ""
    clerk: Optional[str] = ""
    accused: Optional[str] = ""
    decision_date: Optional[str] = ""
    witnesses: List[str] = []

class JudgmentResponse(BaseModel):
    metadata: JudgmentMetadata
    text: List[Paragraph]

class JudgmentListItem(BaseModel):
    case_id: str
    court: str
    legal_qualification: str
    decision_date: str
    accused: str
    victim: Optional[str]
    injury_severity: Optional[str]
    witnesses: List[str]
    penalty: Optional[str]


class JudgmentListResponse(BaseModel):
    judgments: List[JudgmentListItem]
    total: int

judgments_cache: List[JudgmentListItem] = []
judgment_full_cache: dict[str, JudgmentResponse] = {}

def build_judgments_cache():
    base_path = DATA_CASES_PATH
    items = []
    full = {}

    for folder in os.listdir(base_path):
        folder_path = os.path.join(base_path, folder)

        if not os.path.isdir(folder_path):
            continue

        for file in os.listdir(folder_path):

            if not file.endswith("_akn.xml"):
                continue

            case_id = file.replace("_akn.xml", "")
            xml_path = os.path.join(folder_path, file)
            csv_path = os.path.join(folder_path, f"{case_id}.csv")

            if not os.path.exists(csv_path):
                continue

            metadata = parse_metadata(csv_path)
            text = parse_judgment_xml(xml_path)

            item = JudgmentListItem(
                case_id=metadata.case_id,
                court=metadata.court,
                legal_qualification=metadata.legal_qualification,
                decision_date=metadata.decision_date,
                accused=metadata.accused,
                victim=metadata.victim,
                injury_severity=metadata.injury_severity,
                witnesses=metadata.witnesses,
                penalty=metadata.penalty
            )

            items.append(item)

            full[case_id] = JudgmentResponse(
                metadata=metadata,
                text=text
            )

    global judgments_cache, judgment_full_cache
    judgments_cache = items
    judgment_full_cache = full

def build_filters_cache():

    base_path = DATA_CASES_PATH

    courts = set()
    years = set()
    legal_qualifications = set()

    for folder in os.listdir(base_path):
        folder_path = os.path.join(base_path, folder)

        if not os.path.isdir(folder_path):
            continue

        for file in os.listdir(folder_path):

            if not file.endswith('.csv'):
                continue

            for file in os.listdir(folder_path):

                if not file.endswith('.csv'):
                    continue

                csv_path = os.path.join(folder_path, file)
                metadata = parse_metadata(csv_path)

                courts.add(metadata.court)
                legal_qualifications.add(metadata.legal_qualification)

                if metadata.decision_date:
                    years.add(metadata.decision_date[:4])

    filters_cache["courts"] = sorted(courts)
    filters_cache["years"] = sorted(years)
    filters_cache["legal_qualifications"] = sorted(legal_qualifications)

def parse_akoma_ntoso(file_path: str) -> LawResponse:
    if not os.path.exists(file_path):
        raise HTTPException(status_code=404, detail="File not found")
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    soup = BeautifulSoup(content, 'lxml-xml')

    title_tag = soup.find("FRBRname")
    title = title_tag["value"] if title_tag else "Unknown Title"
    source = soup.find("publication")["showAs"] if soup.find("publication") else "Unknown Source"
    date = soup.find("FRBRdate")["date"] if soup.find("FRBRdate") else "Unknown Date"

    chapters_list = []

    for chapter in soup.find_all('chapter'):
        articles_in_chapter = []

        for article in chapter.find_all('article'):
            # paragraphs = [p.get_text(strip=True) for p in article.find_all('p')]

            paragraphs = []

            for p in article.find_all(attrs={"eId": True}):

                if p.name not in ["p", "paragraph"]:
                    continue

                refs = []

                for ref in p.find_all('ref'):
                    refs.append({
                        "text": ref.get_text(strip=True),
                        "target": ref.get("href").replace("#", "")
                    })

                paragraphs.append({
                    "id": p.get("eId"),
                    "text": p.get_text(strip=True),
                    "references": refs
                })

            articles_in_chapter.append(Article(
                id=article["eId"],
                num=article.num.get_text(strip=True),
                content=paragraphs
            ))

        chapters_list.append(Chapter(
            id=chapter["eId"],
            num=chapter.num.get_text(strip=True),
            title=chapter.heading.get_text(strip=True),
            articles=articles_in_chapter
        ))

    return LawResponse(
        title=title,
        source=source,
        date=date,
        chapters=chapters_list
    )

def parse_metadata(csv_path: str) -> JudgmentMetadata:
    with open(csv_path, 'r', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        row = next(reader)

    def safe(key):
        return (row.get(key) or "").strip()

    witnesses_raw = safe("witnesses")

    if witnesses_raw and witnesses_raw != "[]":
        witnesses = [w.strip() for w in witnesses_raw.split(";")]
    else:
        witnesses = []

    return JudgmentMetadata(
        act_description=safe("act_description"),
        legal_qualification=safe("legal_qualification"),
        victim=safe("victim"),
        time_period=safe("time_period"),
        means_of_commission=safe("means_of_commission"),
        injury_severity=safe("injury_severity"),
        penalty=safe("penalty"),
        security_measure=safe("security_measure"),
        case_id=safe("case_id"),
        court=safe("court"),
        judge=safe("judge"),
        clerk=safe("clerk"),
        accused=safe("accused"),
        decision_date=safe("decision_date"),
        witnesses=witnesses,
    )

def parse_judgment_xml(xml_path: str) -> List[Paragraph]:

    with open(xml_path, 'r', encoding='utf-8') as f:
        soup = BeautifulSoup(f.read(), 'lxml-xml')

    paragraphs = []

    for p in soup.find_all("p"):

        refs = [
            Reference(
                text=ref.get_text(strip=True),
                target=ref.get("href").replace("#", "")
            ) for ref in p.find_all("ref")
        ]

        paragraphs.append(Paragraph(
            id=p.get("eId"),
            text=p.get_text(strip=True),
            references=refs
        ))
    return paragraphs

def find_case_files(case_id: str):
    base_dir = "../../data/cases/"

    for folder in os.listdir(base_dir):
        folder_path = os.path.join(base_dir, folder)

        if not os.path.isdir(folder_path):
            continue

        xml_path = os.path.join(folder_path, f"{case_id}_akn.xml")
        csv_path = os.path.join(folder_path, f"{case_id}.csv")

        if os.path.exists(xml_path) and os.path.exists(csv_path):
            return xml_path, csv_path
        
        raise HTTPException(status_code=404, detail="Judgment not found")

@app.get("/judgment/{case_id}", response_model=JudgmentResponse)
async def get_judgment(case_id: str):
    if case_id not in judgment_full_cache:
        raise HTTPException(404, "Judgment not found")

    return judgment_full_cache[case_id]

@app.get("/judgments", response_model=JudgmentListResponse)
async def list_judgments(
    page: int = 1,
    page_size: int = 25,
    court: str | None = None,
    year: str | None = None,
    legal_qualification: str | None = None
):

    filtered = judgments_cache

    if court:
        filtered = [j for j in filtered if j.court == court]

    if year:
        filtered = [j for j in filtered if j.decision_date.startswith(year)]

    if legal_qualification:
        filtered = [j for j in filtered if j.legal_qualification == legal_qualification]

    total = len(filtered)

    start = (page - 1) * page_size
    end = start + page_size

    return JudgmentListResponse(
        judgments=filtered[start:end],
        total=total
    )

@app.get("/law/{file_name}", response_model=LawResponse)
async def get_law(file_name: str):
    path = f"../data/laws/{file_name}.xml"
    return parse_akoma_ntoso(path)

@app.on_event("startup")
async def startup_event():
    build_judgments_cache()
    build_filters_cache()

@app.get("/judgments/filters")
async def get_filters():
    return filters_cache





from fastapi.responses import JSONResponse

# @app.post("/generate-rdf")
# async def generate_rdf(request: FactsRequest):
#     print("Received RDF generation request:", request.json())
#     rdf_content = generate_rdf_facts(request)

#     dr_device_dir = os.path.join(os.path.dirname(os.path.dirname(__file__)), "dr-device")

#     try:
#         subprocess.run(["cmd", "/c", "clean.bat"], cwd=dr_device_dir, check=True)
#         subprocess.run(["cmd", "/c", "start.bat"], cwd=dr_device_dir, check=True)
#         status = "success"
#         message = "RDF generated and DR-Device scripts executed."
#     except Exception as e:
#         print("Error running DR-Device scripts:", e)
#         status = "error"
#         message = f"RDF generated, but error running DR-Device scripts: {e}"

#     return JSONResponse(content={"status": status, "message": message})

import rdflib
import requests
import os
import subprocess
from fastapi.responses import JSONResponse

@app.post("/generate-rdf")
async def generate_rdf(request: FactsRequest):
    # Konvertujemo request u rečnik
    req_dict = request.dict()
    print("Received RDF generation request:", json.dumps(req_dict, indent=2))
    
    # 1. Generisanje facts.rdf
    rdf_content = generate_rdf_facts(request)

    dr_device_dir = os.path.join(os.path.dirname(os.path.dirname(__file__)), "dr-device")
    export_path = os.path.join(dr_device_dir, "export.rdf")

    # 2. i 3. Izvršavanje DR-Device
    try:
        subprocess.run(["cmd", "/c", "clean.bat"], cwd=dr_device_dir, check=True)
        subprocess.run(["cmd", "/c", "start.bat"], cwd=dr_device_dir, check=True)
    except Exception as e:
        print("Error running DR-Device scripts:", e)
        return JSONResponse(status_code=500, content={"status": "error", "message": f"Greška DR-Device: {e}"})

    # --- KORAK 4: Čitanje rezultata DR-Device ---
    verdict_type = "Nije specifikovano"
    try:
        if os.path.exists(export_path):
            print(f"DEBUG: Učitavam DR-Device rezultat iz {export_path}")
            g = rdflib.Graph()
            g.parse(export_path)
            DEFEASIBLE = rdflib.Namespace("http://lpis.csd.auth.gr/systems/dr-device/defeasible.rdfs#")
            RDF = rdflib.Namespace("http://www.w3.org/1999/02/22-rdf-syntax-ns#")
            proven_positive = DEFEASIBLE['defeasibly-proven-positive']
            
            for s, p, o in g.triples((None, DEFEASIBLE.truthStatus, proven_positive)):
                for _, _, type_uri in g.triples((s, RDF.type, None)):
                    class_name = str(type_uri).split('#')[-1]
                    if class_name.startswith("is_guilty"):
                        verdict_type = class_name
                        break
            print(f"DEBUG: DR-Device je dokazao: {verdict_type}")
    except Exception as e:
        print(f"Greška pri parsiranju export.rdf: {e}")

    # --- KORAK 5: Priprema za Javu (USKLAĐENO SA CbrApplication.java i simConfig) ---
    
    # Prvo odredi pravnu kvalifikaciju na osnovu DR-Device rezultata
    mapping = {
        "is_guilty_of_family_violence_lv4": "cl. 297 st. 3 KZ",
        "is_guilty_of_family_violence_lv1": "cl. 289 st. 3 KZ"
    }
    # Ako DR-Device ne nađe ništa, stavi podrazumevanu vrednost koja postoji u CSV bazi
    mapped_val = mapping.get(verdict_type, "cl. 289 st. 3 KZ")

    # Pripremi listu oštećenih kao string
    victims_list = req_dict.get("victims", [])
    victims_string = ", ".join([v.get("name", "") for v in victims_list if v.get("name")])

    # Sastavi payload sa SVIM poljima koja Java očekuje
    colibri_payload = {
        "caseId": "QUERY-FACTS",
        "legalQualification": mapped_val,
        "victim": victims_string,
        "meansOfCommission": req_dict.get("facts_text", ""),
        "injurySeverity": "teska" if req_dict.get("causesSeriousInjury") == "true" else "laka",
        "numberOfVictims": str(req_dict.get("numberOfVictims", "1")),
        "repetition": str(req_dict.get("repetition", "false")),
        "previousConviction": str(req_dict.get("previousConviction", "false")),
        "verdictType": "osudjujuca", # DR-Device je rekao "is_guilty"
        "mitigatingFactors": "", # Možeš dodati ako imaš polje na frontu
        "aggravatingFactors": "", 
        "court": req_dict.get("court", ""),
        "judge": req_dict.get("judge", ""),
        "clerk": req_dict.get("clerk", ""),
        "accused": req_dict.get("accused", req_dict.get("defendant", "")),
        "decisionDate": "", 
        "usesWeapon": str(req_dict.get("usesWeapon", "false")),
        "usesGrossViolence": str(req_dict.get("usesGrossViolence", "false")),
        "violatesIntegrity": str(req_dict.get("violatesIntegrity", "family_member_no")),
        "causesSeriousInjury": str(req_dict.get("causesSeriousInjury", "false")),
        "victimIsMinor": str(req_dict.get("victimIsMinor", "false")),
        "causesDeath": str(req_dict.get("causesDeath", "false")),
        "violatesProtectionMeasures": str(req_dict.get("violatesProtectionMeasures", "false")),
        "legalObligationToSupport": str(req_dict.get("legalObligationToSupport", "false")),
        "dutyEstablishedByCourtOrder": str(req_dict.get("dutyEstablishedByCourtOrder", "false")),
        "failsToPaySupport": str(req_dict.get("failsToPaySupport", "false")),
        "justifiedReasonsForNonpayment": str(req_dict.get("justifiedReasonsForNonpayment", "false")),
        "severeConsequencesForVictim": str(req_dict.get("severeConsequencesForVictim", "false"))
    }

    # --- KORAK 6: Pozivanje Jave ---
    try:
        print(f"DEBUG: Šaljem payload Javi na http://localhost:8080/api/cbr/recommend")
        java_response = requests.post("http://localhost:8080/api/cbr/recommend", json=colibri_payload, timeout=10)
        
        print(f"DEBUG: Java status kod: {java_response.status_code}")
        java_response.raise_for_status()
        similar_cases = java_response.json()
    except Exception as e:
        print(f"DEBUG: Greška pri komunikaciji sa Javom: {e}")
        similar_cases = []

    return {
        "status": "success",
        "dr_device_result": verdict_type,
        "similar_cases": similar_cases,
        "message": "Uspešno izvršeno."
    }

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
    