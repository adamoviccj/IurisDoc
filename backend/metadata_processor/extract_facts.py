import json
import xml.etree.ElementTree as ET
import os
import re
from dotenv import load_dotenv
import openai
import glob
import csv


load_dotenv()
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
client = openai.OpenAI(api_key=OPENAI_API_KEY)
OPENAI_MODEL = "gpt-4o"

NS = {"akn": "http://docs.oasis-open.org/legaldocml/ns/akn/3.0"}



def extract_relevant_sections(root):
    def extract_section(eid):
        sec = root.find(f".//akn:section[@eId='{eid}']", NS)
        if sec is None:
            return ""
        return " ".join(
            "".join(p.itertext()).strip()
            for p in sec.findall(".//akn:p", NS)
        )

    facts_text = extract_section("sec.motivation.facts")
    legal_text = extract_section("sec.motivation.legal")

    guilt_section = root.find(".//akn:article[@eId='sec.decision.guilt']", NS)
    guilt_text = (
        " ".join("".join(p.itertext()).strip() for p in guilt_section.findall(".//akn:p", NS))
        if guilt_section is not None else ""
    )

    sanction_section = root.find(".//akn:article[@eId='sec.decision.sanction']", NS)
    sanction_text = (
        " ".join("".join(p.itertext()).strip() for p in sanction_section.findall(".//akn:p", NS))
        if sanction_section is not None else ""
    )

    # razdvajanje kazne i mjere bezbjednosti
    parts = re.split(r"\bMJERA BEZBIJEDNOSTI\b", sanction_text, flags=re.IGNORECASE)
    penalty = parts[0].strip()
    security = "MJERA BEZBIJEDNOSTI " + parts[1].strip() if len(parts) > 1 else ""

    return facts_text, legal_text + " " + guilt_text, penalty, security



def extract_victim(root, facts_text):
    ref = root.find(".//akn:section[@eId='sec.motivation.facts']//akn:ref", NS)
    if ref is not None and ref.text:
        return ref.text.strip()

    m = re.search(
        r"(oštećen[auo]?\s+[A-ZČĆŠĐŽ]\.\s*[A-ZČĆŠĐŽ]\.|"
        r"člana porodice\s+[A-ZČĆŠĐŽ][a-zčćđšž]+\s+[A-ZČĆŠĐŽ][a-zčćđšž]+)",
        facts_text
    )
    return m.group(1) if m else ""

def extract_time_period(text):
    patterns = [
        r"\d{1,2}\.\d{1,2}\.\d{4}\s*[–-]\s*\d{1,2}\.\d{1,2}\.\d{4}",
        r"\d{1,2}\.\d{1,2}\.\d{4}",
        r"\d{1,2}\.\s*[a-zčćđšž]+\s*\d{4}\.\s*godine"
    ]
    for p in patterns:
        m = re.search(p, text, re.IGNORECASE)
        if m:
            return m.group(0)
    return ""



def extract_means_llm(facts_text):
    if not facts_text.strip():
        return ""

    prompt = f"""
Iz sledećeg teksta izdvoji ISKLJUČIVO sredstvo ili način izvršenja krivičnog dela.

PRAVILA:
- 1–5 riječi
- Bez kazne
- Bez mjere bezbjednosti
- Ako nije eksplicitno navedeno → ""

PRIMJERI:
"prijetnjom"
"putem društvenih mreža"
"fizičkom silom"

TEKST:
{facts_text}

Vrati validan JSON:
{{ "means_of_commission": "" }}
"""

    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )

    data = json.loads(response.choices[0].message.content)
    return data.get("means_of_commission", "").strip()



def extract_injury_severity_llm(facts_text):
    if not facts_text.strip():
        return ""

    prompt = f"""
Utvrdi da li je u tekstu EKSPPLICITNO navedena tjelesna povreda.

DOZVOLJENE VRIJEDNOSTI:
- "laka tjelesna povreda"
- "teška tjelesna povreda"
- "nema tjelesne povrede"
- ""

PRAVILA:
- Ne zaključuj
- Ne koristi član zakona
- Ako se pominju samo prijetnje → "nema tjelesne povrede"
- Ako nije jasno → ""

TEKST:
{facts_text}

Vrati validan JSON:
{{ "injury_severity": "" }}
"""

    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )

    data = json.loads(response.choices[0].message.content)
    return data.get("injury_severity", "").strip()


def call_openai_core(facts_text, legal_text):
    if not facts_text.strip():
        return {"act_description": "", "legal_qualification": ""}

    prompt = f"""
Ti si ekspert za analizu krivičnih presuda u Crnoj Gori.

ZADATAK:
Ekstrahuj ISKLJUČIVO eksplicitno navedene podatke.

OGRANIČENJA:
- Bez imena oštećenog
- Bez kazne
- Bez člana zakona u opisu

POLJA:
1. act_description
2. legal_qualification

ČINJENICE:
{facts_text}

PRAVNA KVALIFIKACIJA:
{legal_text}

Vrati ISKLJUČIVO JSON.
"""

    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )

    return json.loads(response.choices[0].message.content)

def process_folder(folder_path, output_csv="output.csv"):
    rows = []

    for file in glob.glob(os.path.join(folder_path, "*.xml")):
        try:
            tree = ET.parse(file)
            root = tree.getroot()
            row = extract_facts(root)
            row["file_name"] = os.path.basename(file)
            rows.append(row)
        except Exception as e:
            print(f"Greška u fajlu {file}: {e}")

    with open(output_csv, "w", encoding="utf-8", newline="") as f:
        writer = csv.DictWriter(
            f,
            fieldnames=[
                "file_name",
                "act_description",
                "legal_qualification",
                "victim",
                "time_period",
                "means_of_commission",
                "injury_severity",
                "penalty",
                "security_measure"
            ]
        )
        writer.writeheader()
        writer.writerows(rows)

    print("✔ CSV generisan:", output_csv)


def extract_number_of_victims_llm(facts_text):
    prompt = f"""
Iz teksta izvuci broj oštećenih lica.

Ako nije eksplicitno navedeno → vrati 1 ako se pominje jedno lice.
Ako nije jasno → vrati "".

Vrati JSON:
{{ "number_of_victims": "" }}

TEKST:
{facts_text}
"""

    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )

    return json.loads(response.choices[0].message.content).get("number_of_victims", "")

def extract_repetition_llm(facts_text):

    if not facts_text.strip():
        return ""

    prompt = f"""
Utvrdi da li je krivično djelo EKSPPLICITNO navedeno kao:

- izvršeno više puta
- u kontinuitetu
- ponovljeno

DOZVOLJENE VRIJEDNOSTI:
- "jednom"
- "više puta"
- ""

PRAVILA:
- Ne zaključuj
- Ako nije jasno navedeno → ""
- Ako se pominje samo jedan događaj → "jednom"

TEKST:
{facts_text}

Vrati ISKLJUČIVO JSON:
{{ "repetition": "" }}
"""

    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )

    return json.loads(response.choices[0].message.content).get("repetition", "").strip()

def extract_aggravating_llm(text):

    if not text.strip():
        return ""

    prompt = f"""
Iz teksta izdvoji ISKLJUČIVO eksplicitno navedene OTEŽAVAJUĆE OKOLNOSTI.

Otežavajuće okolnosti mogu biti:
- ranija osuđivanost
- izvršenje pred djecom
- višestruko izvršenje
- posebno drsko ponašanje
- upotreba oružja

Ako nema eksplicitno navedenih → vrati "".

Vrati kao kratku listu odvojenu zarezom.

TEKST:
{text}

Vrati ISKLJUČIVO JSON:
{{ "aggravating_factors": "" }}
"""

    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )

    return json.loads(response.choices[0].message.content)\
             .get("aggravating_factors", "").strip()

def extract_previous_conviction_llm(full_text):
    if not full_text.strip():
        return ""

    prompt = f"""
Utvrdi da li se u tekstu EKSPPLICITNO navodi da je okrivljeni ranije osuđivan.

VAŽNO:
- Ako piše "ranije neosuđivan" → odgovor je "ne"
- Ne zaključuj
- Ne pretpostavljaj
- Gledaj samo eksplicitnu formulaciju

DOZVOLJENE VRIJEDNOSTI:
- "da"
- "ne"
- ""

Ako nije jasno ili nije pomenuto → vrati ""

Vrati ISKLJUČIVO JSON:
{{ "previous_conviction": "" }}

TEKST:
{full_text}
"""

    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )

    data = json.loads(response.choices[0].message.content)
    return data.get("previous_conviction", "").strip()

def extract_mitigating_llm(text):
    if not text.strip():
        return ""

    prompt = f"""
Iz teksta izdvoji SAMO olakšavajuće okolnosti.

Vrati kao kratku listu odvojenju zarezom.
Ako nema → vrati "".

TEKST:
{text}

Vrati JSON:
{{ "mitigating_factors": "" }}
"""

    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )

    return json.loads(response.choices[0].message.content)\
             .get("mitigating_factors", "")



def extract_mitigating_factors(root):
    """
    Izvlači tekst iz dijela presude gdje se navode
    olakšavajuće okolnosti (sec.motivation.sanction).
    """

    section = root.find(".//akn:section[@eId='sec.motivation.sanction']", NS)

    if section is None:
        return ""

    text = " ".join(
        "".join(p.itertext()).strip()
        for p in section.findall(".//akn:p", NS)
    )

    return text.strip()

def extract_aggravating_factors(root):
    """
    Izvlači kompletan motivacioni dio presude,
    kako bi LLM mogao da detektuje otežavajuće okolnosti.
    """

    motivation = root.find(".//akn:motivation", NS)

    if motivation is None:
        return ""

    text = " ".join(
        "".join(p.itertext()).strip()
        for p in motivation.findall(".//akn:p", NS)
    )

    return text.strip()

def extract_facts(root):

    
    facts_text, legal_text, penalty, security = extract_relevant_sections(root)

    data = call_openai_core(facts_text, legal_text)

    data["victim"] = extract_victim(root, facts_text)
    data["time_period"] = extract_time_period(facts_text)
    data["means_of_commission"] = extract_means_llm(facts_text)
    data["injury_severity"] = extract_injury_severity_llm(facts_text)


    data["number_of_victims"] = extract_number_of_victims_llm(facts_text)
    data["repetition"] = extract_repetition_llm(facts_text)
    data["previous_conviction"] = extract_previous_conviction_llm(facts_text)

 
    mitigation_text = extract_mitigating_factors(root)
    data["mitigating_factors"] = extract_mitigating_llm(mitigation_text)

    aggravation_text = extract_aggravating_factors(root)
    data["aggravating_factors"] = extract_aggravating_llm(aggravation_text)


    data["penalty"] = penalty
    data["security_measure"] = security

    required_keys = [
        "act_description",
        "legal_qualification",
        "victim",
        "time_period",
        "means_of_commission",
        "injury_severity",
        "penalty",
        "security_measure",
        "number_of_victims",
        "repetition",
        "previous_conviction",
        "mitigating_factors",
        "aggravating_factors"
    ]

    for key in required_keys:
        data.setdefault(key, "")

    return data
