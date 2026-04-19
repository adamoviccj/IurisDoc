import re

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
import random
import csv
import subprocess

from akoma_ntoso_processor.convert_new_case import generate_akoma_ntoso
from facts_generator.generate_facts import FactsRequest, generate_rdf_facts
from metadata_processor.generate_judgment_csv import generate_judgment_csv

BASE_DIR = os.path.dirname(os.path.abspath(__file__))          
PROJECT_ROOT = os.path.dirname(os.path.dirname(BASE_DIR))      
DATA_CASES_PATH = os.path.join(PROJECT_ROOT, "data", "cases")
DATA_LAWS_PATH = os.path.join(PROJECT_ROOT, "data", "laws")
CBR_RESOURCES_PATH = os.path.join(PROJECT_ROOT, "backend", "presude-cbr", "src", "main", "resources")

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

class Person(BaseModel):
    id: Optional[str] = None
    name: str

class Penalty(BaseModel):
    type: str
    value: float
    unit: str

class Decision(BaseModel):
    isAcquittal: bool
    penalty: Optional[Penalty] = None

class FinalJudgment(BaseModel):
    metadata: dict
    facts: dict
    analysis: dict
    decision: Decision

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
    verdict_types = []
    extracted_penalties = []

    try:
        if os.path.exists(export_path):
            g = rdflib.Graph()
            g.parse(export_path)

            proven_subjects = []
            for s, p, o in g:
                if "truthStatus" in str(p) and "defeasibly-proven-positive" in str(o):
                    proven_subjects.append(s)

            for s in proven_subjects:
                current_class = "Unknown"
                for _, _, type_uri in g.triples((s, rdflib.RDF.type, None)):
                    current_class = str(type_uri).split("#")[-1].split("/")[-1]

                if current_class == "Unknown":
                    current_class = str(s).split("#")[-1].split("/")[-1]

                # Koristi puni naziv klase sa brojem
                full_class_name = current_class

                if "is_guilty" in full_class_name:
                    if full_class_name not in verdict_types:
                        verdict_types.append(full_class_name)

                for _, val_p, val_o in g.triples((s, None, None)):
                    if "value" in str(val_p):
                        penalty_entry = {
                            "type": full_class_name,
                            "value": str(val_o)
                        }

                        # Pronađi unit za ovu kaznu (iz triplova gde je parent s)
                        unit_found = False
                        for _, unit_p, unit_o in g.triples((s, None, None)):
                            if "unit" in str(unit_p):
                                penalty_entry["unit"] = str(unit_o)
                                unit_found = True
                                break

                        # Ako je novčana kazna, pokušaj da nađeš unit i iz child objekta
                        if not unit_found and ("pay" in full_class_name or "to_pay" in full_class_name):
                            for _, unit_p, unit_o in g.triples((val_o, None, None)):
                                if "unit" in str(unit_p):
                                    penalty_entry["unit"] = str(unit_o)
                                    unit_found = True
                                    break
                            if not unit_found:
                                penalty_entry["unit"] = "RSD"  # fallback

                        extracted_penalties.append(penalty_entry)

    except Exception as e:
        print(f"DEBUG: Greska prilikom citanja DR-Device rezultata: {e}")

    # --- KORAK 5: Priprema za Javu (USKLAĐENO SA CbrApplication.java i simConfig) ---
    
    # Prvo odredi pravnu kvalifikaciju na osnovu DR-Device rezultata
    mapping = {
        "is_guilty_of_family_violence_lv1": "cl. 220 st. 1 KZ",
        "is_guilty_of_family_violence_lv2": "cl. 220 st. 2 KZ",
        "is_guilty_of_family_violence_lv3": "cl. 220 st. 3 KZ",
        "is_guilty_of_family_violence_lv4": "cl. 220 st. 4 KZ",
        "is_guilty_of_violating_measures": "cl. 220 st. 5 KZ",
        "is_guilty_of_nonpayment_of_support_lv1": "cl. 221 st. 1 KZ",
        "is_guilty_of_nonpayment_of_support_lv2": "cl. 221 st. 3 KZ"
    }
    
    primary_verdict = verdict_types[0] if verdict_types else "Nije specifikovano"
    mapped_val = mapping.get(primary_verdict, "Nepoznata kvalifikacija")

    victims_list = req_dict.get("victims", [])
    victims_string = ", ".join([v.get("name", "") for v in victims_list if v.get("name")])

    colibri_payload = {
        "caseId": "QUERY-FACTS",
        "legalQualification": mapped_val,
        "victim": victims_string,
        "meansOfCommission": req_dict.get("facts_text", ""),
        "injurySeverity": "teska" if req_dict.get("causesSeriousInjury") == "true" else "laka",
        "numberOfVictims": str(req_dict.get("numberOfVictims", "1")),
        "repetition": str(req_dict.get("repetition", "false")),
        "previousConviction": str(req_dict.get("previousConviction", "false")),
        "verdictType": "osudjujuca",
        "court": req_dict.get("court", ""),
        "judge": req_dict.get("judge", ""),
        "accused": req_dict.get("accused", req_dict.get("defendant", "")),
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

    similar_cases = []
    try:
        java_response = requests.post("http://localhost:8080/api/cbr/recommend", json=colibri_payload, timeout=10)

        if java_response.status_code == 200:
            similar_cases = java_response.json()
            print("Received similar cases from Java:", json.dumps(similar_cases, indent=2))
    except Exception as e:
        print(f"DEBUG: Java error: {e}")

    # Postprocesiranje caseId u similar_cases
    def clean_case_id(cid):
        if not cid:
            return ""
        if cid.startswith("judgement."):
            return cid[len("judgement."):]
        return cid

    for case in similar_cases:
        # Prvo pokušaj da pronađe caseId ili caseId_clean
        if "caseId" in case:
            case["caseId"] = clean_case_id(case["caseId"])
        elif "caseId_clean" in case:
            case["caseId"] = clean_case_id(case["caseId_clean"])
        # Ako nema ni jedno, ne radi ništa

    result = {
        "status": "success",
        "dr_device_results": verdict_types, # Vraća listu svih nađenih krivica
        "penalties": extracted_penalties,    # Vraća listu svih nađenih kazni sa tipovima
        "similar_cases": similar_cases,
        "message": "Uspešno izvršeno."
    }

    print("RDF generation result:", json.dumps(result, indent=2))

    return result

@app.post("/save-judgment")
async def save_judgment(judgment: FinalJudgment):
    try:
        print("[save-judgment] Poziv endpointa /save-judgment")
        data_dict = judgment.dict()
        
        # 1. Priprema identifikatora i imena fajla
        case_id_raw = data_dict['metadata'].get('case_id', 'NN')
        broj = ''
        godina = ''
        if case_id_raw.startswith('K_') and '_' in case_id_raw:
            parts = case_id_raw.split('_')
            if len(parts) >= 3:
                broj = parts[1]
                godina = parts[2]
        
        if not broj:
            broj = str(random.randint(1, 1000))
        if not godina:
            # Uzimamo prva 4 karaktera iz datuma generisanja ili '2026' kao fallback
            gen_date = data_dict['metadata'].get('generationDate', '')
            godina = str(gen_date)[:4] if gen_date else "2026"

        file_base = f"K_{broj}_{godina}"
        print(f"[save-judgment] Generisano ime fajla: {file_base}")

        # 2. Određivanje putanje za čuvanje na osnovu pravne kvalifikacije
        article_folder = None
        applied_articles = data_dict.get('analysis', {}).get('appliedArticles', [])
        legal_qual = data_dict.get('metadata', {}).get('legal_qualification', '')
        
        if any('220' in str(a) for a in applied_articles) or '220' in legal_qual:
            article_folder = 'article_220'
        elif any('221' in str(a) for a in applied_articles) or '221' in legal_qual:
            article_folder = 'article_221'

        save_dir = os.path.join(DATA_CASES_PATH, article_folder) if article_folder else DATA_CASES_PATH
        os.makedirs(save_dir, exist_ok=True)

        # 3. Generisanje Akoma Ntoso XML-a
        print("[save-judgment] Poziv generate_akoma_ntoso...")
        xml_content = await generate_akoma_ntoso(data_dict)
        
        if not xml_content:
            print("[save-judgment] Greška: XML sadržaj nije generisan.")
            return JSONResponse(status_code=400, content={"status": "error", "message": "XML generisanje nije uspelo."})

        xml_path = os.path.join(save_dir, f"{file_base}_akn.xml")
        with open(xml_path, "w", encoding="utf-8") as f:
            f.write(xml_content)
        print(f"[save-judgment] XML fajl sačuvan: {xml_path}")

        # 4. Generisanje CSV fajlova (Pojedinačni i zbirni presude.csv)
        csv_status = "pending"
        try:
            generate_judgment_csv(data_dict, CBR_RESOURCES_PATH, file_base)
            print(f"[save-judgment] CSV podaci ažurirani u {CBR_RESOURCES_PATH}")
            csv_status = "success"
        except Exception as e:
            print(f"[save-judgment] Greška prilikom generisanja CSV: {e}")
            csv_status = f"error: {e}"

        # 5. AŽURIRANJE MEMORIJSKOG KEŠA (Da bi se odmah videlo u aplikaciji)
        try:
            # Kreiramo metapodatke direktno iz pristiglih podataka
            meta = data_dict.get('metadata', {})
            new_metadata = JudgmentMetadata(
                act_description=meta.get('act_description', ""),
                legal_qualification=meta.get('legal_qualification', legal_qual),
                victim=meta.get('victim', ""),
                time_period=meta.get('time_period', ""),
                means_of_commission=meta.get('means_of_commission', ""),
                injury_severity="teska" if data_dict.get('facts', {}).get('causesSeriousInjury') else "laka",
                penalty=meta.get('penalty', ""),
                security_measure=meta.get('security_measure', ""),
                case_id=file_base,
                court=meta.get('court', ""),
                judge=meta.get('judge', ""),
                clerk=meta.get('clerk', ""),
                accused=meta.get('accused', ""),
                decision_date=meta.get('decision_date', ""),
                witnesses=meta.get('witnesses', [])
            )

            # Parsiramo tekst iz XML-a (za full prikaz)
            new_text_paragraphs = parse_judgment_xml(xml_path)

            # Dodajemo u listu za tabelarni prikaz
            new_list_item = JudgmentListItem(
                case_id=file_base,
                court=new_metadata.court,
                legal_qualification=new_metadata.legal_qualification,
                decision_date=new_metadata.decision_date,
                accused=new_metadata.accused,
                victim=new_metadata.victim,
                injury_severity=new_metadata.injury_severity,
                witnesses=new_metadata.witnesses,
                penalty=new_metadata.penalty
            )

            global judgments_cache, judgment_full_cache
            # Dodajemo na početak liste da bi nova presuda bila prva
            judgments_cache.insert(0, new_list_item)
            judgment_full_cache[file_base] = JudgmentResponse(
                metadata=new_metadata,
                text=new_text_paragraphs
            )
            
            # Osvežavamo i filtere (ako je novi sud ili godina)
            build_filters_cache()
            print(f"[save-judgment] Memorijski keš uspešno ažuriran za ID: {file_base}")

        except Exception as e:
            print(f"[save-judgment] Upozorenje: Fajlovi sačuvani, ali keš nije ažuriran: {e}")

        return JSONResponse(content={
            "status": "success",
            "message": "Presuda uspešno procesuirana i sačuvana.",
            "case_id": file_base,
            "files": {
                "xml": xml_path,
                "csv_individual": os.path.join(CBR_RESOURCES_PATH, f"{file_base}.csv")
            },
            "csv_status": csv_status
        })

    except Exception as e:
        print(f"[save-judgment] KRITIČNA GREŠKA: {e}")
        return JSONResponse(status_code=500, content={
            "status": "error",
            "message": f"Interna greška servera: {str(e)}"
        })
    
    
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)
    