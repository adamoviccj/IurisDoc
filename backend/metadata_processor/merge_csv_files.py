import os
import csv

def get_resources_dir():
    # Pronađi resources folder relativno na ovu skriptu, bez obzira na pokretanje iz facts_generator ili metadata_processor
    script_dir = os.path.dirname(os.path.abspath(__file__))
    # Traži presude-cbr/src/main/resources od root projekta
    base = script_dir
    for _ in range(3):
        candidate = os.path.join(base, "presude-cbr", "src", "main", "resources")
        if os.path.isdir(candidate):
            return candidate
        base = os.path.dirname(base)
    # Ako nije pronađen, pokušaj iz root-a
    candidate = os.path.abspath(os.path.join(script_dir, "..", "..", "..", "presude-cbr", "src", "main", "resources"))
    if os.path.isdir(candidate):
        return candidate
    return None

def merge_csv_files(output_filename="presude.csv"):
    input_dir = get_resources_dir()
    if not input_dir or not os.path.isdir(input_dir):
        print(f"GRESKA: Folder sa CSV fajlovima ne postoji: {input_dir}")
        return
    csv_files = [
        os.path.join(input_dir, f) for f in os.listdir(input_dir)
        if f.endswith(".csv") and f != output_filename
    ]
    if not csv_files:
        print("Nema CSV fajlova za spajanje.")
        return

    all_rows = []
    fieldnames = None
    for file in csv_files:
        with open(file, newline='', encoding='utf-8') as f:
            reader = csv.DictReader(f, delimiter=';')
            rows = list(reader)
            if not rows:
                continue
            if fieldnames is None:
                fieldnames = reader.fieldnames.copy() if reader.fieldnames else []
                if 'caseId' not in fieldnames:
                    fieldnames.append('caseId')
                # fieldnames.append('caseId_clean')
            for row in rows:
                # Dodaj novu kolonu caseId_clean
                orig_case_id = row.get('caseId', '')
                # Ukloni 'judgment.' ako postoji
                if orig_case_id.startswith('judgment.'):
                    row['caseId'] = orig_case_id[len('judgment.'):]
                else:
                    row['caseId'] = orig_case_id
                all_rows.append(row)

    if not all_rows or not fieldnames:
        print("Nema podataka za upis.")
        return

    output_path = os.path.join(input_dir, output_filename)
    with open(output_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames, delimiter=';')
        writer.writeheader()
        for row in all_rows:
            writer.writerow(row)
    print(f"Svi podaci su spojeni u {output_path}")

if __name__ == "__main__":
    merge_csv_files()
