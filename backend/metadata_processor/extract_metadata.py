import xml.etree.ElementTree as ET

NS = {"akn": "http://docs.oasis-open.org/legaldocml/ns/akn/3.0"}

def extract_metadata(root):
    metadata = {}

    # Case ID
    judgment = root.find(".//akn:judgment", NS)
    metadata["case_id"] = judgment.attrib.get("eId", "").replace("judgment.", "") if judgment is not None else ""

    # Court
    court = root.find(".//akn:TLCOrganization", NS)
    metadata["court"] = court.attrib.get("showAs", "") if court is not None else ""

    # Judge
    judge = root.find(".//akn:judge", NS)
    if judge is not None:
        ref = judge.attrib.get("refersTo", "").replace("#", "")
        person = root.find(f".//akn:TLCPerson[@eId='{ref}']", NS)
        metadata["judge"] = person.attrib.get("showAs", "") if person is not None else ""
    else:
        metadata["judge"] = ""

    # Clerk
    clerk = root.find(".//akn:clerk", NS)
    if clerk is not None:
        ref = clerk.attrib.get("refersTo", "").replace("#", "")
        person = root.find(f".//akn:TLCPerson[@eId='{ref}']", NS)
        metadata["clerk"] = person.attrib.get("showAs", "") if person is not None else ""
    else:
        metadata["clerk"] = ""

    # Accused
    accused = root.find(".//akn:party[@role='accused']", NS)
    metadata["accused"] = accused.text.strip() if accused is not None and accused.text else ""

    # Decision date
    date = root.find(".//akn:FRBRExpression/akn:FRBRdate", NS)
    metadata["decision_date"] = date.attrib.get("date", "") if date is not None else ""

    # Witnesses 
    witnesses = []
    for w in root.findall(".//akn:party[@role='witness']", NS):
        if w.text and w.text.strip():
            witnesses.append(w.text.strip())
    metadata["witnesses"] = witnesses

    return metadata
