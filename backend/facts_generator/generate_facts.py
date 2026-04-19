import re
from typing import Optional
from pydantic import BaseModel
import os


class FactsRequest(BaseModel):
    court: Optional[str] = ""
    defendant: Optional[str] = ""
    judge: Optional[str] = ""
    clerk: Optional[str] = ""
    facts_text: Optional[str] = ""
    numberOfVictims: Optional[int] = 0
    # these field names use snake_case to match the RDF and rulebase
    usesGrossViolence: Optional[str] = None
    violatesIntegrity: Optional[str] = None  # e.g. "family_member_no"
    usesWeapon: Optional[str] = None
    causesSeriousInjury: Optional[str] = None
    causesDeath: Optional[str] = None
    violatesProtectionMeasures: Optional[str] = None

    # obligations / support
    legalObligationToSupport: Optional[str] = None
    dutyEstablishedByCourtOrder: Optional[str] = None
    failsToPaySupport: Optional[str] = None
    justifiedReasonsForNonpayment: Optional[str] = None
    severeConsequencesForVictim: Optional[str] = None

    # additional contextual flags used by the dr-device rulebase
    victimIsMinor: Optional[str] = None


def generate_rdf_facts(data: FactsRequest) -> str:
    # Map camelCase frontend fields to snake_case backend fields
    camel_to_snake = {
        'usesGrossViolence': 'uses_gross_violence',
        'violatesIntegrity': 'violates_integrity',
        'usesWeapon': 'uses_weapon',
        'causesSeriousInjury': 'causes_serious_injury',
        'causesDeath': 'causes_death',
        'violatesProtectionMeasures': 'violates_protection_measures',
        'legalObligationToSupport': 'legal_obligation_to_support',
        'dutyEstablishedByCourtOrder': 'duty_established_by_court_order',
        'failsToPaySupport': 'fails_to_pay_support',
        'justifiedReasonsForNonpayment': 'justified_reasons_for_nonpayment',
        'severeConsequencesForVictim': 'severe_consequences_for_victim',
        'victimIsMinor': 'victim_is_minor',
    }

    # Convert incoming data to dict and remap keys
    data_dict = data.dict()
    normalized = {}
    for k, v in data_dict.items():
        normalized[camel_to_snake.get(k, k)] = v

    # sanitise defendant name for use in identifiers
    defendant_id = re.sub(r'[^a-zA-Z0-9_]', '_', normalized['defendant'].strip()) or "case01"

    # mapping of request attributes to RDF property names and their types, in the order from facts.rdf
    field_map = [
        ("uses_weapon", "boolean"),
        ("uses_gross_violence", "boolean"),
        ("violates_integrity", "string"),
        ("causes_serious_injury", "boolean"),
        ("victim_is_minor", "boolean"),
        ("causes_death", "boolean"),
        ("violates_protection_measures", "boolean"),
        ("legal_obligation_to_support", "boolean"),
        ("duty_established_by_court_order", "boolean"),
        ("fails_to_pay_support", "boolean"),
        ("justified_reasons_for_nonpayment", "boolean"),
        ("severe_consequences_for_victim", "boolean"),
    ]

    # build RDF lines incrementally
    rdf_lines = [
        '<?xml version="1.0" encoding="UTF-8"?>',
        '',
        '<rdf:RDF',
        '    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"',
        '    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"',
        '    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"',
        '    xmlns:lc="http://informatika.ftn.uns.ac.rs/legal-case.rdf#">',
        '',
        f'    <lc:case rdf:about="http://informatika.ftn.uns.ac.rs/legal-case.rdf#{defendant_id}">',
        f'        <lc:name>{defendant_id.replace("_", " ")}</lc:name>',
        f'        <lc:defendant>{normalized["defendant"]}</lc:defendant>',
    ]

    # helper to add a line for a property value
    def add_line(prop: str, value: str, dtype: str):
        if dtype == 'boolean':
            rdf_lines.append(f'        <lc:{prop}>{str(value).lower()}</lc:{prop}>')
        else:
            rdf_lines.append(f'        <lc:{prop}>{value}</lc:{prop}>')

    # Add each property in the correct order
    for prop, dtype in field_map:
        val = normalized.get(prop, None)
        if val is None:
            continue
        if dtype == 'string':
            if isinstance(val, str) and val.strip():
                add_line(prop, val, dtype)
        else:
            add_line(prop, val, dtype)

    rdf_lines.extend([
        '    </lc:case>',
        '</rdf:RDF>',
        ''
    ])

    rdf_content = '\n'.join(rdf_lines)

    # persist to dr-device/facts.rdf for convenience
    try:
        base = os.path.dirname(os.path.dirname(__file__))
        out_path = os.path.join(base, 'dr-device', 'facts.rdf')
        with open(out_path, 'w', encoding='utf-8') as f:
            f.write(rdf_content)
    except Exception:
        # ignore IO errors
        pass

    return rdf_content
