from akoma_ntoso_processor.convert_laws import convert_law_to_akoma_ntoso
from akoma_ntoso_processor.cases_ocr import extract_text_from_pdf
from akoma_ntoso_processor.convert_cases import convert_case_to_akoma_ntoso
import os
import sys

if __name__ == "__main__":
    # convert_law_to_akoma_ntoso("../data/laws/02_ZBSP_akn.xml", "../data/laws/law.txt", "../data/laws/law.xml")

    # extract_text_from_pdf("../data/cases")

    target_folders = ["article_220", "article_221"]

    try:
        for folder_name in target_folders:
            article_folder = os.path.join("../data/cases", folder_name)
            if not os.path.exists(article_folder):
                print(f"Folder {article_folder} does not exist. Skipping.")
                continue

            for filename in os.listdir(article_folder):
                if filename.endswith('.txt'):
                    case_txt_path = os.path.join(article_folder, filename)
                    output_akn_path = os.path.join(article_folder, f"{os.path.splitext(filename)[0]}_akn.xml")
                    convert_case_to_akoma_ntoso(case_txt_path, output_akn_path, folder_name)
        print("Finished processing all files.")
    except KeyboardInterrupt:
        print("\nProcess interrupted by user. Exiting.")
        sys.exit(0)
