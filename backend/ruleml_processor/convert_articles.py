import openai
import os
from dotenv import load_dotenv

load_dotenv()

OPENAI_API_KEY = os.getenv("OPENAI_API_KEY")
client = openai.OpenAI(api_key=OPENAI_API_KEY)

RULEBASE_EXAMPLE = "../data/rulebase/rulebase_example.lrml"

def convert_articles_to_ruleml(article_txt_path, output_ruleml_path):
    with open(RULEBASE_EXAMPLE, 'r', encoding='utf-8') as example_file:
        example_content = example_file.read()

    with open(article_txt_path, 'r', encoding='utf-8') as article_file:
        article_content = article_file.read()

    system_prompt = (
        "Vi ste LegalRuleML inženjer. Na osnovu dostavljenog 'law.txt' i strukture u 'rulebase_example.lrml', Vaš zadatak je da konvertujete tekst članka zakona u XML format koristeći <rulebase> tagove.\n\n"
        "UPUTSTVA:\n"
        "- Koristite 'Primer rulebase-a' kao direktan šablon za XML elemente (<rulebase>, <rule>, <if>, <then>).\n"
        "- Svaki uslov u članku pretvorite u <if> tag, a svaki zaključak u <then> tag." \
        " - Svaki stav zakona pretvori u 'PrescriptiveStatement'." \
        " - Ako stav predstavlja teži oblik dela (npr. Čl. 220 st. 3 u odnosu na st. 1), kreiraj pomoćno pravilo koje negira osnovno delo." \
        " -  Na kraju dokumenta obavezno generiši 'OverrideStatement' blokove koji definišu prioritet specifičnijih pravila." \
        " - Koristi 'defeasible' snagu za sva pravila kako bi omogućio pobitno zaključivanje." \
        " - Svakom stavu zakona dodeli PenaltyStatement"
    )

    try:
        response = client.chat.completions.create(
            model="gpt-4o",
            messages=[
                {"role": "system", "content": system_prompt},
                {"role": "user", "content": f"Primer rulebase-a:\n{example_content}"},
                {"role": "user", "content": f"Tekst članka za konverziju:\n\n{article_content}"}
            ],
            temperature=0
        )

        ruleml_output = response.choices[0].message.content

        if "```xml" in ruleml_output:
            ruleml_output = ruleml_output.split("```xml")[1].split("```")[0].strip()

        elif "```" in ruleml_output:
            ruleml_output = ruleml_output.split("```")[1].split("```")[0].strip()

        with open(output_ruleml_path, 'w', encoding='utf-8') as output_file:
            output_file.write(ruleml_output)

        print(f"Successfully converted {article_txt_path} to {output_ruleml_path}")

    except Exception as e:
        print(f"Error converting {article_txt_path}: {e}")