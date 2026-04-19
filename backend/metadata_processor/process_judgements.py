import os
import json
import xml.etree.ElementTree as ET
import re
import csv
import glob
from dotenv import load_dotenv
import openai

# --- 1. KONFIGURACIJA ---
load_dotenv()
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
client = openai.OpenAI(api_key=OPENAI_API_KEY)
OPENAI_MODEL = "gpt-4o"
NS = {"akn": "http://docs.oasis-open.org/legaldocml/ns/akn/3.0"}

# --- 2. POMOĆNE FUNKCIJE ---

def get_full_text(element):
    if element is None: return ""
    return " ".join("".join(p.itertext()).strip() for p in element.findall(".//akn:p", NS))

def extract_legal_qualification_regex(root):
    """
    Pretražuje i izreku o krivici i pravnu motivaciju jer se u XML-u 
    članovi često nalaze u 'sec.motivation.legal'.
    """
    # Liste sekcija koje redom proveravamo
    sections_to_check = [
        root.find(".//akn:article[@eId='sec.decision.guilt']", NS),
        root.find(".//akn:section[@eId='sec.motivation.legal']", NS)
    ]
    
    # Poboljšan Regex: hvata "čl.", "člana", "st.", "stav", "stava", "u vezi sa"
    pattern = r"čl\.?\s*(\d+)\s*(?:st\.?|stava?)\s*(\d+)(?:\s*(?:u vezi sa|u vezi|i)\s*(?:st\.?|stava?)\s*(\d+))?"

    for section in sections_to_check:
        if section is not None:
            text = " ".join(section.itertext()).replace('\n', ' ')
            match = re.search(pattern, text, re.IGNORECASE)
            if match:
                clan = match.group(1)
                st1 = match.group(2)
                st2 = match.group(3)
                if st2:
                    return f"čl. {clan} st. {st1} u vezi st. {st2}"
                return f"čl. {clan} st. {st1}"
    
    return "" # Ako ne nađe, vraća prazno, pa ćemo u main-u sprečiti LLM da izmišlja

def extract_text_sections(root):
    sections = {}
    f_sec = root.find(".//akn:section[@eId='sec.motivation.facts']", NS)
    sections['facts_text'] = get_full_text(f_sec)
    
    l_sec = root.find(".//akn:section[@eId='sec.motivation.legal']", NS)
    g_sec = root.find(".//akn:article[@eId='sec.decision.guilt']", NS)
    sections['legal_text'] = get_full_text(l_sec) + " " + get_full_text(g_sec)
    
    m_sec = root.find(".//akn:motivation", NS)
    sections['motivation_text'] = get_full_text(m_sec)
    return sections

def extract_data_with_llm(texts, extracted_legal):
    """
    Prosleđujemo već izvučeni 'extracted_legal' da LLM ne bi halucinirao 123.
    """
    context = f"ČINJENICE: {texts['facts_text']}\nPRAVNI DEO: {texts['legal_text']}"
    
    prompt = f"""
    Analiziraj tekst presude i vrati JSON. 
    ZAKONSKA KVALIFIKACIJA JE VEĆ UTVRĐENA KAO: {extracted_legal if extracted_legal else "Nepoznato"}.
    U JSON-u pod 'legalQualification' obavezno stavi tu vrednost. Ne izmišljaj članove.

    TEKST: {context}
    
    JSON format:
       {{
       legalQualification": "{extracted_legal}",
        "meansOfCommission": "Sredstvo (npr. 'prijetnja', 'fizička sila').",
        "injurySeverity": "Dozvoljene vrijednosti: 'laka', 'teska', 'lake,teske', 'nema'.",
        "numberOfVictims": "Broj (npr. '1').",
        "repetition": "true ili false",
        "previousConviction": "true ili false",
        "mitigatingFactors": "npr. 'neosuđivanost'",
        "aggravatingFactors": "npr. 'povrat'",
        "verdictType": "osudjujuca",

        "usesWeapon": "true ili false",
        "usesGrossViolence": "true ili false",
        "violatesIntegrity": "family_member_yes ili family_member_no",
        "causesSeriousInjury": "true ili false",
        "victimIsMinor": "true ili false",
        "causesDeath": "true ili false",
        "violatesProtectionMeasures": "true ili false",
        "legalObligationToSupport": "true ili false",
        "dutyEstablishedByCourtOrder": "true ili false",
        "failsToPaySupport": "true ili false",
        "justifiedReasonsForNonpayment": "true ili false",
        "severeConsequencesForVictim": "true ili false"
    }}
    """
    response = client.chat.completions.create(
        model=OPENAI_MODEL,
        messages=[{"role": "user", "content": prompt}],
        temperature=0,
        response_format={"type": "json_object"}
    )
    return json.loads(response.choices[0].message.content)

# --- 3. MAIN ---

def process_xml_file(xml_path, output_path):
    print(f"Obrađujem: {os.path.basename(xml_path)}")
    tree = ET.parse(xml_path)
    root = tree.getroot()
    
    # 1. Prvo Regex (pouzdanije)
    legal_qual = extract_legal_qualification_regex(root)
    
    # 2. Tekstovi za LLM
    texts = extract_text_sections(root)
    
    # 3. LLM (sada zna koji je član izvučen i neće izmišljati 123)
    final_data = extract_data_with_llm(texts, legal_qual)
    
    # Dodajemo ostale metapodatke
    final_data["caseId"] = root.find(".//akn:judgment", NS).attrib.get("eId", "")
    
    # Upis u CSV
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    with open(output_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=final_data.keys(), delimiter=';')
        writer.writeheader()
        writer.writerow(final_data)

def main():
    """
    Glavna funkcija koja pronalazi XML fajlove i pokreće obradu za svaki.
    Putanje se definišu dinamički u odnosu na lokaciju ove skripte.
        """
    try:
        script_dir = os.path.dirname(os.path.abspath(__file__))

        # ISTO kao u skripti koja radi
        BASE_DIR = os.path.abspath(os.path.join(script_dir, "..", ".."))

    except NameError:
        print("Upozorenje: interaktivno okruženje")
        BASE_DIR = os.path.abspath(".")
    # Definicija ulaznih i izlaznih putanja na osnovu BASE_DIR
    input_dirs = [
        os.path.join(BASE_DIR, "data", "cases", "article_220"),
        os.path.join(BASE_DIR, "data", "cases", "article_221")
    ]
    output_dir = os.path.join(BASE_DIR, "backend", "presude-cbr", "src", "main", "resources")

    print("--- Pokretanje skripte za obradu presuda ---")
    print(f"Osnovni direktorijum projekta: {BASE_DIR}")
    print(f"Izlazni direktorijum za CSV: {output_dir}")

    # Provjera da li su putanje ispravne prije početka obrade
    if not os.path.isdir(input_dirs[0]) and not os.path.isdir(input_dirs[1]):
         print("\n!!! GREŠKA: Ulazni direktorijumi nisu pronađeni.")
         print("!!! Provjerite da li je broj '..' u BASE_DIR definiciji ispravan za vašu strukturu projekta.")
         print(f"!!! Skripta traži: {input_dirs[0]}")
         return

    for directory in input_dirs:
        if not os.path.isdir(directory):
            print(f"\nUpozorenje: Direktorijum ne postoji, preskačem: {directory}")
            continue
        
        print(f"\nObrada direktorijuma: {directory}")
        xml_files = glob.glob(os.path.join(directory, "*.xml"))
        
        if not xml_files:
            print("Nema .xml fajlova u ovom direktorijumu.")
            continue
            
        for xml_file in xml_files:
            base_name = os.path.splitext(os.path.basename(xml_file))[0]
            output_csv_path = os.path.join(output_dir, f"{base_name}.csv")
            process_xml_file(xml_file, output_csv_path)
            
    print("\n--- Obrada završena. ---")


if __name__ == "__main__":
    main()