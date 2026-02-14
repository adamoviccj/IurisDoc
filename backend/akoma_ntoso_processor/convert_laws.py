import openai
from dotenv import load_dotenv
import os

load_dotenv()

OPEN_API_KEY = os.getenv("OPENAI_API_KEY")
client = openai.OpenAI(api_key=OPEN_API_KEY)

def convert_law_to_akoma_ntoso(example_file, input_file, output_file):
    with open(example_file, "r", encoding="utf-8") as f:
        example_law = f.read()

    with open(input_file, "r", encoding="utf-8") as f:
        input_law = f.read()

    system_instruction = (
        "Vi ste asistent za pravnu informatiku. Vaš zadatak je da konvertujete "
        "dostavljeni tekst zakona u Akoma Ntoso 3.0 XML format. "
        "Kao striktan šablon za strukturu, meta-podatke i eId identifikatore, "
        "koristite priloženi primer XML-a. "
        "VAŽNO: Svaki put kada u tekstu naiđete na pominjanje drugog člana ili stava "
        "(npr. 'iz stava 1 ovog člana' ili 'iz člana 220'), taj tekst morate uokviriti "
        "u <ref> tag sa ispravnim 'href' atributom koji pokazuje na eId tog elementa. "
        "Primer: 'iz stava (1)' postaje '<ref href=\"#art_220__para_1\">stava (1)</ref>'."
        "Vratite isključivo XML kod."
    )

    user_message = (
        f"Evo primera XML strukture koju moraš pratiti:\n\n{example_law}\n\n"
        f"Sada, koristeći istu logiku tagova i meta-podataka (prilagođeno Crnoj Gori), "
        f"konvertuj sledeći tekst:\n\n{input_law}"
    )

    response = client.chat.completions.create(
        model="gpt-4o",
        messages=[
            {"role": "system", "content": system_instruction},
            {"role": "user", "content": user_message}
        ],
        temperature=0
    )

    akoma_ntoso_xml = response.choices[0].message.content

    with open(output_file, "w", encoding="utf-8") as f:
        f.write(akoma_ntoso_xml)

    print(f"Zakon je uspešno konvertovan i sačuvan u {output_file}")