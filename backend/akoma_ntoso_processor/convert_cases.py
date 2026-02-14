import openai
import os
from dotenv import load_dotenv

load_dotenv()

OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
client = openai.OpenAI(api_key=OPENAI_API_KEY)

LAW_EXAMPLE = "../data/laws/law.xml"
JUDGMENT_EXAMPLE = "../data/cases/example_case_akn.xml"
BASE_CASES_FOLDER = "../data/cases"

def convert_case_to_akoma_ntoso(case_txt_path, output_akn_path, article_context):
    with open(LAW_EXAMPLE, 'r', encoding='utf-8') as law_file:
        law_content = law_file.read()

    with open(JUDGMENT_EXAMPLE, 'r', encoding='utf-8') as judgment_file:
        judgment_content = judgment_file.read()

    with open(case_txt_path, 'r', encoding='utf-8') as case_file:
        case_content = case_file.read()

    system_prompt = (
        "Vi ste ekspert za Akoma Ntoso 3.0 standard. Vaš zadatak je da konvertujete tekst sudske presude u XML format koristeći <judgment> tagove.\n\n"
        "UPUTSTVA:\n"
        "- Koristite 'Primer presude' kao direktan šablon za XML elemente (<header>, <judgmentBody>, <conclusions>, <motivation>).\n"
        "- Koristite 'Primer zakona' da biste vidjeli kako se pravilno mapiraju metapodaci i unutrašnje reference.\n"
        f"- Napomena: Ova presuda se odnosi na {article_context.replace('_', ' ')}.\n"
        "- Svaki pomen zakona (npr. 'čl. 220 st. 1') pretvorite u <ref> tag (npr. <ref href='#art_220__para_1'>čl. 220 st. 1</ref>)."
    )

    try:
        response = client.chat.completions.create(
            model="gpt-4o",
            messages=[
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": f"Primer zakona:\n{law_content}"},
                {"role": "user", "content": f"Primer presude:\n{judgment_content}"},
                {"role": "user", "content": f"Tekst za konverziju:\n\n{case_content}"}
            ],
            temperature=0
        )

        akoma_ntoso_output = response.choices[0].message.content

        if "```xml" in akoma_ntoso_output:
            akoma_ntoso_output = akoma_ntoso_output.split("```xml")[1].split("```")[0].strip()

        elif "```" in akoma_ntoso_output:
            akoma_ntoso_output = akoma_ntoso_output.split("```")[1].split("```")[0].strip()

        with open(output_akn_path, 'w', encoding='utf-8') as output_file:
            output_file.write(akoma_ntoso_output)

        print(f"Successfully converted {case_txt_path} to {output_akn_path}")

    except Exception as e:
        print(f"Error converting {case_txt_path}: {e}")
    