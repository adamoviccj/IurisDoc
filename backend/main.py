from akoma_ntoso_processor.convert_laws import convert_law_to_akoma_ntoso

if __name__ == "__main__":
    convert_law_to_akoma_ntoso("../data/laws/02_ZBSP_akn.xml", "../data/laws/law.txt", "../data/laws/law.xml")