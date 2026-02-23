import os
import pandas as pd


BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))

directories = [
    os.path.join(BASE_DIR, "data", "cases", "article_220"),
    os.path.join(BASE_DIR, "data", "cases", "article_221")
]
for directory in directories:
    print(f"\nObrada direktorijuma: {directory}")

 
    files = os.listdir(directory)

  
    facts_files = [f for f in files if f.endswith("_akn_facts.csv")]

    for facts_file in facts_files:
        base_name = facts_file.replace("_akn_facts.csv", "")
        metadata_file = base_name + "_akn_metadata.csv"

        facts_path = os.path.join(directory, facts_file)
        metadata_path = os.path.join(directory, metadata_file)
        output_path = os.path.join(BASE_DIR, "backend", "presude-cbr", "src", "main", "resources", f"{base_name}.csv")

  
        if not os.path.exists(metadata_path):
            print(f"Preskačem {base_name} - metadata fajl ne postoji.")
            continue

        try:
            
            facts_df = pd.read_csv(facts_path)
            metadata_df = pd.read_csv(metadata_path)

        
            if len(facts_df) != len(metadata_df):
                print(f"Preskačem {base_name} - različit broj redova.")
                continue

            # Spajanje po kolonama
            merged_df = pd.concat([facts_df, metadata_df], axis=1)

  
            merged_df.to_csv(output_path, index=False)

            print(f"✓ Kreiran fajl: {output_path}")

        except Exception as e:
            print(f" Greška kod {base_name}: {e}")

print("\nZavršeno spajanje svih fajlova.")