import os
import pandas as pd

BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))

directories = [
    os.path.join(BASE_DIR, "data", "cases", "article_220"),
    os.path.join(BASE_DIR, "data", "cases", "article_221")
]

output_path = os.path.join(BASE_DIR, "presude_master.csv")

all_rows = []

for directory in directories:

    if not os.path.exists(directory):
        print("Ne postoji:", directory)
        continue

    for file in os.listdir(directory):

        # uzmi samo obične CSV fajlove
        if file.endswith(".csv") and not file.endswith("_akn_facts.csv"):

            path = os.path.join(directory, file)

            try:
                # čitanje bez preskakanja
                df = pd.read_csv(
                    path,
                    sep=";",
                    engine="python",
                    dtype=str
                )

                # ukloni potpuno prazne redove
                df = df.dropna(how="all")

                if len(df) == 0:
                    continue

                # uzmi prvi validan red
                row = df.iloc[0]

                all_rows.append(row)

                print("Dodato:", file)

            except Exception as e:
                print("Greška u fajlu:", file)
                print(e)

# Kreiranje master fajla
if all_rows:

    master = pd.DataFrame(all_rows)

    # ukloni duplikate (po case_id ako postoji)
    if "case_id" in master.columns:
        master = master.drop_duplicates(subset=["case_id"])

    master.to_csv(output_path, index=False, sep=";")

    print("\nKreiran master fajl:", output_path)

else:
    print("Nema podataka za spajanje.")