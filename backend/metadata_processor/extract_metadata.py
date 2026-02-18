import xml.etree.ElementTree as ET

NS = {"akn": "http://docs.oasis-open.org/legaldocml/ns/akn/3.0"}

def extract_metadata(root):
    metadata = {}

    judgment = root.find(".//akn:judgment", NS)
    metadata["case_id"] = judgment.attrib.get("eId", "").replace("judgment.", "") if judgment is not None else ""

    court = root.find(".//akn:TLCOrganization", NS)
    metadata["court"] = court.attrib.get("showAs", "") if court is not None else ""

    judge = root.find(".//akn:judge", NS)
    if judge is not None:
        ref = judge.attrib.get("refersTo", "").replace("#", "")
        person = root.find(f".//akn:TLCPerson[@eId='{ref}']", NS)
        metadata["judge"] = person.attrib.get("showAs", "") if person is not None else ""
    else:
        metadata["judge"] = ""

    clerk = root.find(".//akn:clerk", NS)
    if clerk is not None:
        ref = clerk.attrib.get("refersTo", "").replace("#", "")
        person = root.find(f".//akn:TLCPerson[@eId='{ref}']", NS)
        metadata["clerk"] = person.attrib.get("showAs", "") if person is not None else ""
    else:
        metadata["clerk"] = ""

    accused = root.find(".//akn:party[@role='accused']", NS)
    metadata["accused"] = accused.text.strip() if accused is not None and accused.text else ""

    date = root.find(".//akn:FRBRExpression/akn:FRBRdate", NS)
    metadata["decision_date"] = date.attrib.get("date", "") if date is not None else ""

    metadata["witnesses"] = []

    return metadata
