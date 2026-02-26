import re
from typing import Optional
from pydantic import BaseModel
import os


class FactsRequest(BaseModel):
    defendant: str
    # these field names use camel case because the frontend sends JSON in that style
    usesGrossViolence: Optional[bool] = None
    violatesIntegrity: Optional[str] = None  # e.g. "family_member"
    usesWeapon: Optional[bool] = None
    causedSevereBodilyHarm: Optional[bool] = None
    causedDeath: Optional[bool] = None
    violatesProtectionMeasures: Optional[bool] = None

    # obligations / support
    legalObligationToSupport: Optional[bool] = None
    dutyEstablishedByCourtOrder: Optional[bool] = None
    failsToPaySupport: Optional[bool] = None
    justifiedReasonsForNonpayment: Optional[bool] = None
    severeConsequencesForVictim: Optional[bool] = None

    # additional contextual flags used by the dr-device rulebase
    victimIsMinor: Optional[bool] = None


def generate_rdf_facts(data: FactsRequest) -> str:
    # sanitise defendant name for use in identifiers
    defendant_id = re.sub(r'[^a-zA-Z0-9_]', '_', data.defendant.strip()) or "case01"

    # mapping of request attributes to RDF property names and their types
    field_map = {
        'usesGrossViolence': ('uses_gross_violence', 'boolean'),
        'violatesIntegrity': ('violates_integrity', 'string'),
        'usesWeapon': ('uses_weapon', 'boolean'),
        'causedSevereBodilyHarm': ('caused_severe_bodily_harm', 'boolean'),
        'causedDeath': ('caused_death', 'boolean'),
        'violatesProtectionMeasures': ('violates_protection_measures', 'boolean'),
        'legalObligationToSupport': ('legal_obligation_to_support', 'boolean'),
        'dutyEstablishedByCourtOrder': ('duty_established_by_court_order', 'boolean'),
        'failsToPaySupport': ('fails_to_pay_support', 'boolean'),
        'justifiedReasonsForNonpayment': ('justified_reasons_for_nonpayment', 'boolean'),
        'severeConsequencesForVictim': ('severe_consequences_for_victim', 'boolean'),
        'victimIsMinor': ('victim_is_minor', 'boolean'),
    }

    # build RDF lines incrementally
    rdf_lines = [
        '<?xml version="1.0" encoding="UTF-8"?>',
        '',
        '<rdf:RDF',
        '    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"',
        '    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"',
        '    xmlns:xsd="http://www.w3.org/2001/XMLSchema#"',
        '    xmlns:lc="http://example.org/lc#">',
        '',
        '  <!-- DEFINICIJE KLASA I PROPERTIJA -->',
        '',
        '  <rdfs:Class rdf:about="http://example.org/lc#case"/>',
        '',
        '  <rdf:Property rdf:about="http://example.org/lc#defendant">',
        '    <rdfs:domain rdf:resource="http://example.org/lc#case"/>',
        '    <rdfs:range rdf:resource="http://www.w3.org/2001/XMLSchema#string"/>',
        '  </rdf:Property>',
    ]

    # declare all properties from the map
    for _, (prop, _) in field_map.items():
        rdf_lines.append(f'  <rdf:Property rdf:about="http://example.org/lc#{prop}"/>')

    rdf_lines.extend([
        '',
        '  <!-- INSTANCA SLUCAJA -->',
        '',
        f'  <lc:case rdf:about="http://example.org/lc#{defendant_id}">',
        '    <rdf:type rdf:resource="http://example.org/lc#case"/>',
        f'    <lc:defendant>{data.defendant}</lc:defendant>',
    ])

    # helper to add a line for a property value
    def add_line(prop: str, value: str, dtype: str):
        if dtype == 'boolean':
            rdf_lines.append(f'    <lc:{prop} rdf:datatype="xsd:boolean">{value}</lc:{prop}>')
        else:
            rdf_lines.append(f'    <lc:{prop}>{value}</lc:{prop}>')

    for field, (prop, dtype) in field_map.items():
        val = getattr(data, field)
        if val is None:
            continue
        if dtype == 'string':
            if isinstance(val, str) and val.strip():
                add_line(prop, val, dtype)
        else:
            if val:
                add_line(prop, 'true', dtype)

    rdf_lines.extend(['', '  </lc:case>', '', '</rdf:RDF>', ''])

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
