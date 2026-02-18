import os
import pathlib
from fastapi import FastAPI, Path as FastAPIPath
import pandas as pd
import xml.etree.ElementTree as ET
from tqdm import tqdm
from dotenv import load_dotenv
import openai
import json

load_dotenv()

OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
client = openai.OpenAI(api_key=OPENAI_API_KEY)
OPENAI_MODEL = "gpt-4o"

BASE_DIR = pathlib.Path(__file__).resolve().parent
PROJECT_ROOT = BASE_DIR.parents[1]


INPUT_FOLDERS = [
    PROJECT_ROOT / "data" / "cases" / "article_220",
    PROJECT_ROOT / "data" / "cases" / "article_221"
]


NS = {"akn": "http://docs.oasis-open.org/legaldocml/ns/akn/3.0"}


def extract_metadata(root):
    metadata = {}

    judgment = root.find(".//akn:judgment", NS)
    metadata["case_id"] = judgment.attrib.get("eId", "").replace("judgment.", "") if judgment is not None else ""

    court = root.find(".//akn:TLCOrganization", NS)
    metadata["court"] = court.attrib.get("showAs", "") if court is not None else ""

    judge = root.find(".//akn:judge", NS)
    if judge is not None:
        ref = judge.attrib.get("refersTo", "").replace("#", "")
        person = root.find(f".//akn:TLCPerson[@eId='{ref}']", NS)
        metadata["judge"] = person.attrib.get("showAs", "") if person is not None else ""
    else:
        metadata["judge"] = ""

    clerk = root.find(".//akn:clerk", NS)
    if clerk is not None:
        ref = clerk.attrib.get("refersTo", "").replace("#", "")
        person = root.find(f".//akn:TLCPerson[@eId='{ref}']", NS)
        metadata["clerk"] = person.attrib.get("showAs", "") if person is not None else ""
    else:
        metadata["clerk"] = ""

    accused = root.find(".//akn:party[@role='accused']", NS)
    metadata["accused"] = accused.text.strip() if accused is not None and accused.text else ""

    date = root.find(".//akn:FRBRExpression/akn:FRBRdate", NS)
    metadata["decision_date"] = date.attrib.get("date", "") if date is not None else ""

    metadata["witnesses"] = []

    return metadata


def extract_relevant_sections(root):

    facts_section = root.find(".//akn:section[@eId='sec.motivation.facts']", NS)
    legal_section = root.find(".//akn:section[@eId='sec.motivation.legal']", NS)

    texts = []
    for section in [facts_section, legal_section]:
        if section is not None:
          
            for elem in section.iter():
                if elem.text and elem.text.strip():
                    texts.append(elem.text.strip())
      
                if elem.tail and elem.tail.strip():
                    texts.append(elem.tail.strip())
    relevant_text = " ".join(texts)

    sanction_section = root.find(".//akn:article[@eId='sec.decision.sanction']", NS)
    penalty_text = ""
    if sanction_section is not None:
        paragraphs = []
        for p in sanction_section.findall(".//akn:p", NS):
            full_text = "".join(p.itertext()).strip()
            if full_text:
                paragraphs.append(full_text)
        penalty_text = " ".join(paragraphs)

    
    security_section = root.find(".//akn:article[@eId='sec.decision.securityMeasure']", NS)
    security_text = ""
    if security_section is not None:
        paragraphs = []
        for p in security_section.findall(".//akn:p", NS):
            full_text = "".join(p.itertext()).strip()
            if full_text:
                paragraphs.append(full_text)
        security_text = " ".join(paragraphs)

    return relevant_text, penalty_text, security_text


def call_openai_for_facts(relevant_text):
    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[
            {
                "role": "system",
                "content": """
Ti si ekspert za analizu sudskih presuda.
Tvoj zadatak je STRIKTNA EKSTRAKCIJA.
NE parafraziraj.
NE tumači.
NE zaključuj.
NE popunjavaj pretpostavke.
Izvlači ISKLJUČIVO ono što je eksplicitno navedeno u tekstu.
Ako podatak ne postoji, vrati praznu vrijednost "".
Vrati isključivo validan JSON:

{
  "act_description": "",
  "victim": "",
  "time_period": "",
  "means_of_commission": "",
  "legal_qualification": ""
}
"""
            },
            {
                "role": "user",
                "content": f"Ekstrahuj podatke iz sljedećeg teksta:\n\n{relevant_text}"
            }
        ],
        temperature=0,
        response_format={"type": "json_object"}
    )
    return response.choices[0].message.content



def process_xml_file(xml_path):
    tree = ET.parse(xml_path)
    root = tree.getroot()

    metadata = extract_metadata(root)
    relevant_text, penalty_text, security_text = extract_relevant_sections(root)

    ai_response = call_openai_for_facts(relevant_text)
    try:
        facts = json.loads(ai_response)
    except json.JSONDecodeError:
        print(f"NLP greška u fajlu: {xml_path}")
        return None

    # Dodavanje penalty i security_measure
    facts["penalty"] = penalty_text
    facts["security_measure"] = security_text

    return metadata, facts

def main():
    for folder in INPUT_FOLDERS:
        for file in tqdm(os.listdir(folder)):
            if not file.lower().endswith(".xml"):
                continue

            xml_path = os.path.join(folder, file)
            result = process_xml_file(xml_path)
            if result is None:
                continue

            metadata, facts = result
            base_name = os.path.splitext(file)[0]

            metadata_csv_path = os.path.join(folder, f"{base_name}_metadata.csv")
            facts_csv_path = os.path.join(folder, f"{base_name}_facts.csv")


            pd.DataFrame([metadata]).to_csv(metadata_csv_path, index=False, encoding="utf-8-sig")
            pd.DataFrame([facts]).to_csv(facts_csv_path, index=False, encoding="utf-8-sig")

            print(f"✔ Kreirani fajlovi za: {file}")

if __name__ == "__main__":
    main()
