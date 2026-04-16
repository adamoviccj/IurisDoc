# process_judgments.py

import os
import json
import xml.etree.ElementTree as ET
import re
import csv
import glob
from dotenv import load_dotenv
import openai

# --- 1. KONFIGURACIJA ---
# Učitavanje okruženja (očekuje .env fajl u istom folderu kao i skripta)
load_dotenv()
OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
if not OPENAI_API_KEY:
    raise ValueError("OPENAI_API_KEY nije postavljen. Kreirajte .env fajl.")

client = openai.OpenAI(api_key=OPENAI_API_KEY)
OPENAI_MODEL = "gpt-4o"

# Akoma Ntoso Namespace
NS = {"akn": "http://docs.oasis-open.org/legaldocml/ns/akn/3.0"}


# --- 2. POMOĆNE FUNKCIJE ZA PARSIRANJE XML-a ---

def get_full_text(element):
    """Pomoćna funkcija za sigurno izvlačenje kompletnog teksta iz XML elementa."""
    if element is None:
        return ""
    return " ".join("".join(p.itertext()).strip() for p in element.findall(".//akn:p", NS))

def extract_text_sections(root):
    """Izvlači ključne tekstualne cjeline iz presude za dalju analizu."""
    sections = {}
    
    # Činjenični opis (za većinu LLM ekstrakcija)
    facts_section = root.find(".//akn:section[@eId='sec.motivation.facts']", NS)
    sections['facts_text'] = get_full_text(facts_section)

    # Pravni opis + dio o krivici (za pravnu kvalifikaciju)
    legal_section = root.find(".//akn:section[@eId='sec.motivation.legal']", NS)
    guilt_section = root.find(".//akn:article[@eId='sec.decision.guilt']", NS)
    sections['legal_text'] = get_full_text(legal_section) + " " + get_full_text(guilt_section)

    # Kompletan tekst obrazloženja (za otežavajuće/olakšavajuće okolnosti)
    motivation_section = root.find(".//akn:motivation", NS)
    sections['motivation_text'] = get_full_text(motivation_section)

    # Tekst o sankciji (za kaznu i mjeru bezbjednosti)
    sanction_section = root.find(".//akn:article[@eId='sec.decision.sanction']", NS)
    sanction_text = get_full_text(sanction_section)
    
    parts = re.split(r"\bMJERA BEZBIJEDNOSTI\b", sanction_text, flags=re.IGNORECASE)
    sections['penalty'] = parts[0].strip()
    sections['security_measure'] = ("MJERA BEZBIJEDNOSTI " + parts[1].strip()) if len(parts) > 1 else ""
    
    return sections

def extract_metadata(root):
    """Izvlači strukturirane metapodatke (sud, sudija, datumi...) iz XML zaglavlja."""
    metadata = {}
    
    # Case ID
    judgment = root.find(".//akn:judgment", NS)
    metadata["caseId"] = judgment.attrib.get("eId", "").replace("judgment.", "") if judgment is not None else ""

    # Sud
    court = root.find(".//akn:TLCOrganization", NS)
    metadata["court"] = court.attrib.get("showAs", "") if court is not None else ""

    # Sudija
    judge_ref = root.find(".//akn:judge", NS)
    if judge_ref is not None:
        ref_id = judge_ref.attrib.get("refersTo", "").replace("#", "")
        person = root.find(f".//akn:TLCPerson[@eId='{ref_id}']", NS)
        metadata["judge"] = person.attrib.get("showAs", "") if person is not None else ""
    else:
        metadata["judge"] = ""

    # Zapisničar
    clerk_ref = root.find(".//akn:clerk", NS)
    if clerk_ref is not None:
        ref_id = clerk_ref.attrib.get("refersTo", "").replace("#", "")
        person = root.find(f".//akn:TLCPerson[@eId='{ref_id}']", NS)
        metadata["clerk"] = person.attrib.get("showAs", "") if person is not None else ""
    else:
        metadata["clerk"] = ""

    # Optuženi
    accused = root.find(".//akn:party[@role='accused']", NS)
    metadata["accused"] = accused.text.strip() if accused is not None and accused.text else ""

    # Datum odluke
    date_element = root.find(".//akn:FRBRExpression/akn:FRBRdate", NS)
    metadata["decisionDate"] = date_element.attrib.get("date", "") if date_element is not None else ""

    # Svjedoci (spojeni u jedan string)
    witnesses = [w.text.strip() for w in root.findall(".//akn:party[@role='witness']", NS) if w.text and w.text.strip()]
    metadata["witnesses"] = "; ".join(witnesses)

    return metadata

def extract_victim_with_regex(facts_text, root):
    """Izvlači ime oštećenog koristeći prvo <ref> tag, a zatim Regex."""
    ref = root.find(".//akn:section[@eId='sec.motivation.facts']//akn:ref", NS)
    if ref is not None and ref.text:
        return ref.text.strip()

    m = re.search(
        r"(oštećen[auo]?\s+[A-ZČĆŠĐŽ]\.\s*[A-ZČĆŠĐŽ]\.|"
        r"člana porodice\s+[A-ZČĆŠĐŽ][a-zčćđšž]+\s+[A-ZČĆŠĐŽ][a-zčćđšž]+)",
        facts_text
    )
    return m.group(1) if m else ""


# --- 3. EKSTRAKCIJA PODATAKA POMOĆU LLM-a (JEDAN POZIV) ---

def extract_data_with_llm(texts):
    """
    Objedinjuje sve ekstrakcije zasnovane na analizi teksta u jedan API poziv
    kako bi se optimizovao proces i troškovi.
    """
    if not texts.get('facts_text', '').strip() and not texts.get('legal_text', '').strip():
        return {}
    prompt = f"""
    Ti si ekspert za analizu krivičnih presuda u Crnoj Gori. Tvoj zadatak je da iz dostavljenih tekstova izvučeš precizne i strukturirane podatke.

    Vrati ISKLJUČIVO validan JSON. Ne dodaj nikakav tekst van JSON-a.

    PRAVILA:
    - Sva polja moraju imati vrednost.
    - NI JEDNO polje ne sme biti prazno ("").
    - Ne zaključuj i ne interpretiraj izvan onoga što je eksplicitno napisano u tekstu.
    - Ako informacija ne postoji u tekstu, koristi podrazumevanu vrednost.
    - Za sva BOOLEAN polja koristi isključivo "da" ili "ne".
    - DEFAULT pravilo za boolean polja: "ne" (ako nije eksplicitno navedeno "da").

    TEKSTUALNI SEGMENTI:
    1. ČINJENIČNI OPIS:
    {texts.get('facts_text', '')}

    2. PRAVNI OPIS I KRIVICA:
    {texts.get('legal_text', '')}

    3. KOMPLETNO OBRAZLOŽENJE (uključujući odluku):
    {texts.get('motivation_text', '')}

    ZAHTJEVANI PODACI (vrati kao JSON objekat sa navedenim ključevima):

    {{
        "legalQualification": "Naziv krivičnog djela (npr. 'Nasilje u porodici'). Ako nije jasno, vrati 'Nepoznato'.",
        "meansOfCommission": "Sredstvo ili način izvršenja (1-5 riječi, npr. 'fizičkom silom', 'prijetnjom'). Ako nije navedeno, vrati 'Nepoznato'.",
        
        "injurySeverity": "Dozvoljene vrijednosti: 'laka tjelesna povreda', 'teška tjelesna povreda', 'nema tjelesne povrede'. Ako nije navedeno, vrati 'nepoznato'.",
        "numberOfVictims": "Broj oštećenih lica (npr. '1', '2'). Ako nije jasno, vrati '0'.",
        "repetition": "Dozvoljene vrijednosti: 'jednom', 'više puta'. Ako nije navedeno, vrati 'jednom'.",
        
        "previousConviction": "da ili ne",
        
        "mitigatingFactors": "Lista olakšavajućih okolnosti odvojena zarezom. Ako nema, vrati 'nema'.",
        "aggravatingFactors": "Lista otežavajućih okolnosti odvojena zarezom. Ako nema, vrati 'nema'.",
        
        "verdictType": "Dozvoljene vrijednosti: 'osuđujuća', 'oslobađajuća', 'odbijajuća'. Ako nije jasno, vrati 'nepoznato'.",

        "usesWeapon": "da ili ne",
        "usesGrossViolence": "da ili ne",
        "violatesIntegrity": "da ili ne",
        "causesSeriousInjury": "da ili ne",
        "victimIsMinor": "da ili ne",
        "causesDeath": "da ili ne",
        "violatesProtectionMeasures": "da ili ne",
        "legalObligationToSupport": "da ili ne",
        "dutyEstablishedByCourtOrder": "da ili ne",
        "failsToPaySupport": "da ili ne",
        "justifiedReasonsForNonpayment": "da ili ne",
        "severeConsequencesForVictim": "da ili ne"
    }}
    """
    try:
        response = client.chat.completions.create(
            model=OPENAI_MODEL,
            messages=[{"role": "user", "content": prompt}],
            temperature=0,
            response_format={"type": "json_object"}
        )
        return json.loads(response.choices[0].message.content)
    except Exception as e:
        print(f"  Greška prilikom poziva LLM-a: {e}")
        return {}


# --- 4. GLAVNA LOGIKA OBRADE ---

def process_xml_file(xml_path, output_path):
    """
    Kompletna obrada jednog XML fajla: parsiranje, ekstrakcija svih polja i upis u CSV.
    """
    print(f"-> Obrada fajla: {os.path.basename(xml_path)}")
    try:
        tree = ET.parse(xml_path)
        root = tree.getroot()
        
        # Korak 1: Ekstrahuj sve dostupne podatke
        final_data = {}
        
        # Metapodaci direktno iz XML-a
        final_data.update(extract_metadata(root))

        # Tekstualni segmenti iz XML-a
        texts = extract_text_sections(root)
        final_data["penalty"] = texts.get('penalty', '')
        final_data["security_measure"] = texts.get('security_measure', '')

        # Oštećeni (kombinacija XML + Regex)
        final_data["victim"] = extract_victim_with_regex(texts['facts_text'], root)
        
        # Svi ostali podaci putem jednog LLM poziva
        llm_extracted_data = extract_data_with_llm(texts)
        final_data.update(llm_extracted_data)

        # Korak 2: Definisanje redosleda kolona prema CaseDescription.java
        csv_columns = [
            "caseId", "legalQualification", "victim", "meansOfCommission", "injurySeverity",
            "numberOfVictims", "repetition", "previousConviction", "mitigatingFactors",
            "aggravatingFactors", "verdictType", "court", "judge", "clerk", "accused",
            "decisionDate", "witnesses",
            # Polja iz "facts.rdf" sekcije
            "usesWeapon", "usesGrossViolence", "violatesIntegrity", "causesSeriousInjury",
            "victimIsMinor", "causesDeath", "violatesProtectionMeasures", "legalObligationToSupport",
            "dutyEstablishedByCourtOrder", "failsToPaySupport", "justifiedReasonsForNonpayment",
            "severeConsequencesForVictim"
            # Polja koja nisu u CaseDescription, ali su korisna (mogu se zakomentarisati)
            # "penalty", "security_measure"
        ]

        # Osiguravamo da sva polja postoje u finalnom rječniku da ne bi došlo do greške
        for col in csv_columns:
            final_data.setdefault(col, "")
            
        # Korak 3: Upis u CSV fajl
        # Kreiranje izlaznog direktorijuma ako ne postoji
        os.makedirs(os.path.dirname(output_path), exist_ok=True)
        with open(output_path, 'w', newline='', encoding='utf-8') as csvfile:
            # Koristimo semicolon kao separator radi bolje kompatibilnosti sa Excelom
            writer = csv.DictWriter(csvfile, fieldnames=csv_columns, delimiter=';')
            writer.writeheader()
            
            # Pripremamo red za upis, uzimajući samo kolone koje su nam potrebne
            row_to_write = {key: final_data[key] for key in csv_columns}
            writer.writerow(row_to_write)
            
        print(f"  ✔ CSV uspješno kreiran: {os.path.basename(output_path)}")

    except Exception as e:
        print(f"  ❌ Greška prilikom obrade fajla {os.path.basename(xml_path)}: {e}")

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