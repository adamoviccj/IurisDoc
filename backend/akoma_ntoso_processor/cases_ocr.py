import pytesseract
from pdf2image import convert_from_path
import os

def extract_text_from_pdf(pdf_path):
    base_name = os.path.splitext(os.path.basename(pdf_path))[0]
    folder = os.path.dirname(pdf_path)
    xml_file = os.path.join(folder, f"{base_name}.xml")
    txt_file = os.path.join(folder, f"{base_name}.txt")

    # Skip if .xml or .txt file exists
    if os.path.exists(xml_file) or os.path.exists(txt_file):
        print(f"Skipping {pdf_path} (XML or TXT already exists)")
        return

    print(f"Extracting text from: {pdf_path}")

    images = convert_from_path(pdf_path, 300)
    full_text = []

    for i, image in enumerate(images):
        text = pytesseract.image_to_string(image, lang="srp_latn")
        print(f"Extracted text from page {i + 1} of {pdf_path}")
        full_text.append(text)

    with open(txt_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(full_text))

    print(f"Finished processing: {pdf_path}. Output saved to: {txt_file}")
