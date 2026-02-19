import os
import sys
import pandas as pd
import xml.etree.ElementTree as ET

from akoma_ntoso_processor.convert_laws import convert_law_to_akoma_ntoso
from akoma_ntoso_processor.cases_ocr import extract_text_from_pdf
from akoma_ntoso_processor.convert_cases import convert_case_to_akoma_ntoso

from metadata_processor.extract_metadata import extract_metadata
from metadata_processor.extract_facts import extract_facts

from ruleml_processor.convert_articles import convert_articles_to_ruleml


def process_xml_file(xml_path):
    """
    Parsira Akoma Ntoso XML i vraća metadata i facts kao dict.
    """
    tree = ET.parse(xml_path)
    root = tree.getroot()

    metadata = extract_metadata(root)
    facts = extract_facts(root)

    return metadata, facts


if __name__ == "__main__":
    process_xml_file("../data/cases/article_221/K_90_2024_akn.xml")
  
    # convert_law_to_akoma_ntoso(
    #     "../data/laws/02_ZBSP_akn.xml",
    #     "../data/laws/law.txt",
    #     "../data/laws/law.xml"
    # )


    # extract_text_from_pdf("../data/cases")

  
    # target_folders = ["article_220", "article_221"]
    # try:
    #     for folder_name in target_folders:
    #         article_folder = os.path.join("../data/cases", folder_name)
    #         if not os.path.exists(article_folder):
    #             print(f"Folder {article_folder} does not exist. Skipping.")
    #             continue
    #
    #         for filename in os.listdir(article_folder):
    #             if filename.endswith('.txt'):
    #                 case_txt_path = os.path.join(article_folder, filename)
    #                 output_akn_path = os.path.join(article_folder, f"{os.path.splitext(filename)[0]}_akn.xml")
    #                 convert_case_to_akoma_ntoso(case_txt_path, output_akn_path, folder_name)
    #     print("Finished processing all files.")
    # except KeyboardInterrupt:
    #     print("\nProcess interrupted by user. Exiting.")
    #     sys.exit(0)

    #metadata and facts extraction
  
    # target_folders = ["article_220", "article_221"]

    # try:
    #     for folder_name in target_folders:
    #         article_folder = os.path.join("../data/cases", folder_name)
    #         if not os.path.exists(article_folder):
    #             print(f"Folder {article_folder} does not exist. Skipping.")
    #             continue

    #         for filename in os.listdir(article_folder):
             
    #             if not filename.lower().endswith("_akn.xml"):
    #                 continue

    #             output_akn_path = os.path.join(article_folder, filename)
    #             try:
    #                 result = process_xml_file(output_akn_path)
    #             except ET.ParseError:
    #                 print(f" Greška parsiranja XML-a: {filename}. Preskačem fajl.")
    #                 continue

    #             if result is None:
    #                 print(f" Greška prilikom obrade fajla: {filename}")
    #                 continue

    #             metadata, facts = result
    #             base_name = os.path.splitext(filename)[0]

               
    #             metadata_csv_path = os.path.join(article_folder, f"{base_name}_metadata.csv")
    #             facts_csv_path = os.path.join(article_folder, f"{base_name}_facts.csv")

      
    #             pd.DataFrame([metadata]).to_csv(metadata_csv_path, index=False, encoding="utf-8-sig")
    #             pd.DataFrame([facts]).to_csv(facts_csv_path, index=False, encoding="utf-8-sig")

    #             print(f"✔ Kreirani CSV fajlovi za: {filename}")

    # except KeyboardInterrupt:
    #     print("\nProcess interrupted by user. Exiting.")
    #     sys.exit(0)

  
    # convert_articles_to_ruleml(
    #     "../data/laws/law.xml",
    #     "../data/rulebase/rulebase.lrml"
    # )
