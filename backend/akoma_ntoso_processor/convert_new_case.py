import os
import openai
from dotenv import load_dotenv
import json

load_dotenv()
client = openai.OpenAI(api_key=os.getenv("OPENAI_API_KEY"))

# Učitaj putanje iz .env fajla
DATA_CASES_PATH = os.getenv("DATA_CASES_PATH")
DATA_LAWS_PATH = os.getenv("DATA_LAWS_PATH")

LAW_EXAMPLE = os.path.join(DATA_LAWS_PATH, "law.xml")
JUDGMENT_EXAMPLE = os.path.join(DATA_CASES_PATH, "example_case_akn.xml")

async def generate_akoma_ntoso(judgment_data: dict):
    """Poziva OpenAI da generiše XML na osnovu primljenih podataka."""
    
    # Učitavanje primera za context
    try:
        with open(LAW_EXAMPLE, 'r', encoding='utf-8') as f:
            law_content = f.read()
        with open(JUDGMENT_EXAMPLE, 'r', encoding='utf-8') as f:
            judgment_content = f.read()
    except FileNotFoundError:
        print("Greška: Šabloni za XML nisu pronađeni!")
        return None

    # Izvlačimo pravnu kvalifikaciju za prompt
    article_context = judgment_data.get('analysis', {}).get('appliedArticles', ['nepoznato'])[0]

    system_prompt = (
        "Vi ste ekspert za Akoma Ntoso 3.0 standard. Vaš zadatak je da konvertujete podatke sudske presude u XML format koristeći <judgment> tagove.\n\n"
        "UPUTSTVA:\n"
        "- Koristite 'Primer presude' kao direktan šablon za strukturu (<header>, <judgmentBody>, <conclusions>, <motivation>).\n"
        "- Svaki pomen zakona (npr. 'čl. 220 st. 1') pretvorite u <ref href='#art_220__para_1'>čl. 220 st. 1</ref>.\n"
        f"- Fokus: Ova presuda se odnosi na {article_context}.\n"
        "- Vratite ISKLJUČIVO čist XML kod bez dodatnog teksta."
    )

    # Šaljemo strukturirani JSON umesto običnog teksta radi preciznosti
    user_content = f"Podaci za presudu:\n{json.dumps(judgment_data, indent=2, ensure_ascii=False)}"

    try:
        response = client.chat.completions.create(
            model="gpt-4o",
            messages=[
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": f"Primer zakona:\n{law_content}"},
                {"role": "user", "content": f"Primer presude:\n{judgment_content}"},
                {"role": "user", "content": user_content}
            ],
            temperature=0
        )

        xml_output = response.choices[0].message.content
        # Čišćenje markdown tagova ako ih model doda
        if "```xml" in xml_output:
            xml_output = xml_output.split("```xml")[1].split("```")[0].strip()
        elif "```" in xml_output:
            xml_output = xml_output.split("```")[1].split("```")[0].strip()
        
        return xml_output
    except Exception as e:
        print(f"OpenAI Greška: {e}")
        return None