import json
import xml.etree.ElementTree as ET
import os
from dotenv import load_dotenv
import openai

load_dotenv()

OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
client = openai.OpenAI(api_key=OPENAI_API_KEY)
OPENAI_MODEL = "gpt-4o"

NS = {"akn": "http://docs.oasis-open.org/legaldocml/ns/akn/3.0"}

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
        paragraphs = ["".join(p.itertext()).strip() for p in sanction_section.findall(".//akn:p", NS)]
        penalty_text = " ".join([p for p in paragraphs if p])

    security_section = root.find(".//akn:article[@eId='sec.decision.securityMeasure']", NS)
    security_text = ""
    if security_section is not None:
        paragraphs = ["".join(p.itertext()).strip() for p in security_section.findall(".//akn:p", NS)]
        security_text = " ".join([p for p in paragraphs if p])

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

def extract_facts(root):
    relevant_text, penalty_text, security_text = extract_relevant_sections(root)
    ai_response = call_openai_for_facts(relevant_text)
    try:
        facts = json.loads(ai_response)
    except json.JSONDecodeError:
        raise ValueError("NLP greška: nevalidan JSON")
    
    # Dodavanje kazne i sigurnosne mere
    facts["penalty"] = penalty_text
    facts["security_measure"] = security_text
    return facts
