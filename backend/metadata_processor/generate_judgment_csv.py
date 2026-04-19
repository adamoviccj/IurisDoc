import os
import csv

def generate_judgment_csv(data: dict, resources_path: str, file_base: str):
    """
    Uvek generiše dva fajla:
    1. Pojedinačni CSV (npr. K-123-2024.csv) - uvek prepisuje/kreira novi.
    2. Zbirni presude.csv - dodaje red na kraj.
    """
    metadata = data.get('metadata', {})
    facts = data.get('facts', {})
    analysis = data.get('analysis', {})
    decision = data.get('decision', {})
    
    csv_row = {
        "legalQualification": analysis.get('appliedArticles', [''])[0] if analysis.get('appliedArticles') else "",
        "meansOfCommission": metadata.get('means_of_commission', ""), 
        "injurySeverity": "teska" if facts.get('causesSeriousInjury') else "laka",
        "numberOfVictims": str(len(metadata.get('victims', []))),
        "repetition": str(facts.get('repetition', False)).lower(),
        "previousConviction": str(facts.get('previousConviction', False)).lower(),
        "mitigatingFactors": "", 
        "aggravatingFactors": "", 
        "verdictType": "oslobadjajuca" if decision.get('isAcquittal') else "osudjujuca",
        "usesWeapon": str(facts.get('usesWeapon', False)).lower(),
        "usesGrossViolence": str(facts.get('usesGrossViolence', False)).lower(),
        "violatesIntegrity": facts.get('violatesIntegrity', 'family_member_no'),
        "causesSeriousInjury": str(facts.get('causesSeriousInjury', False)).lower(),
        "victimIsMinor": str(facts.get('victimIsMinor', False)).lower(),
        "causesDeath": str(facts.get('causesDeath', False)).lower(),
        "violatesProtectionMeasures": str(facts.get('violatesProtectionMeasures', False)).lower(),
        "legalObligationToSupport": str(facts.get('legalObligationToSupport', False)).lower(),
        "dutyEstablishedByCourtOrder": str(facts.get('dutyEstablishedByCourtOrder', False)).lower(),
        "failsToPaySupport": str(facts.get('failsToPaySupport', False)).lower(),
        "justifiedReasonsForNonpayment": str(facts.get('justifiedReasonsForNonpayment', False)).lower(),
        "severeConsequencesForVictim": str(facts.get('severeConsequencesForVictim', False)).lower(),
        "caseId": file_base
    }

    os.makedirs(resources_path, exist_ok=True)
    
    # --- 1. KREIRANJE POJEDINAČNOG FAJLA ---
    single_path = os.path.join(resources_path, f"{file_base}.csv")
    with open(single_path, 'w', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=csv_row.keys(), delimiter=';')
        writer.writeheader()
        writer.writerow(csv_row)

    # --- 2. DODAVANJE U ZBIRNI FAJL ---
    summary_path = os.path.join(resources_path, "presude.csv")
    file_exists = os.path.isfile(summary_path)
    
    with open(summary_path, 'a', newline='', encoding='utf-8') as f:
        writer = csv.DictWriter(f, fieldnames=csv_row.keys(), delimiter=';')
        if not file_exists:
            writer.writeheader()
        writer.writerow(csv_row)