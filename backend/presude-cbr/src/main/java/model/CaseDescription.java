package model;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class CaseDescription implements CaseComponent {

	private String caseId;
	private String legalQualification;
	private String victim;
	private String meansOfCommission;
	private String injurySeverity;

	private String numberOfVictims;
	private String repetition;
	private String previousConviction;

	private String mitigatingFactors;
	private String aggravatingFactors;

	private String verdictType;
	private String court;
	private String judge;
	private String clerk;
	private String accused;
	private String decisionDate;
	private String witnesses;

	// Polja iz facts.rdf
	private String usesWeapon;
	private String usesGrossViolence;
	private String violatesIntegrity;
	private String causesSeriousInjury;
	private String victimIsMinor;
	private String causesDeath;
	private String violatesProtectionMeasures;
	private String legalObligationToSupport;
	private String dutyEstablishedByCourtOrder;
	private String failsToPaySupport;
	private String justifiedReasonsForNonpayment;
	private String severeConsequencesForVictim;

	@Override
	public Attribute getIdAttribute() {
		return new Attribute("caseId", this.getClass());
	}

	// GETTERS & SETTERS

	public String getCaseId() {
		return caseId;
	}

	public void setCaseId(String caseId) {
		this.caseId = caseId;
	}

	public String getLegalQualification() {
		return legalQualification;
	}

	public void setLegalQualification(String legalQualification) {
		this.legalQualification = legalQualification;
	}

	public String getVictim() {
		return victim;
	}

	public void setVictim(String victim) {
		this.victim = victim;
	}

	public String getMeansOfCommission() {
		return meansOfCommission;
	}

	public void setMeansOfCommission(String meansOfCommission) {
		this.meansOfCommission = meansOfCommission;
	}

	public String getInjurySeverity() {
		return injurySeverity;
	}

	public void setInjurySeverity(String injurySeverity) {
		this.injurySeverity = injurySeverity;
	}

	public String getNumberOfVictims() {
		return numberOfVictims;
	}

	public void setNumberOfVictims(String numberOfVictims) {
		this.numberOfVictims = numberOfVictims;
	}

	public String getRepetition() {
		return repetition;
	}

	public void setRepetition(String repetition) {
		this.repetition = repetition;
	}

	public String getPreviousConviction() {
		return previousConviction;
	}

	public void setPreviousConviction(String previousConviction) {
		this.previousConviction = previousConviction;
	}

	public String getMitigatingFactors() {
		return mitigatingFactors;
	}

	public void setMitigatingFactors(String mitigatingFactors) {
		this.mitigatingFactors = mitigatingFactors;
	}

	public String getAggravatingFactors() {
		return aggravatingFactors;
	}

	public void setAggravatingFactors(String aggravatingFactors) {
		this.aggravatingFactors = aggravatingFactors;
	}

	public String getCourt() {
		return court;
	}

	public void setCourt(String court) {
		this.court = court;
	}

	public String getJudge() {
		return judge;
	}

	public void setJudge(String judge) {
		this.judge = judge;
	}

	public String getClerk() {
		return clerk;
	}

	public void setClerk(String clerk) {
		this.clerk = clerk;
	}

	public String getAccused() {
		return accused;
	}

	public void setAccused(String accused) {
		this.accused = accused;
	}

	public String getDecisionDate() {
		return decisionDate;
	}

	public void setDecisionDate(String decisionDate) {
		this.decisionDate = decisionDate;
	}

	public String getWitnesses() {
		return witnesses;
	}

	public void setWitnesses(String witnesses) {
		this.witnesses = witnesses;
	}

	@Override
	public String toString() {

		return "\n------------------------------------\n"
				+ "Case ID: " + caseId + "\n"
				+ "Court: " + court + "\n"
				+ "Judge: " + judge + "\n"
				+ "Legal qualification: " + legalQualification + "\n"
				+ "Means of commission: " + meansOfCommission + "\n"
				+ "Injury severity: " + injurySeverity + "\n"
				+ "Security measure: " + violatesProtectionMeasures + "\n"
				+ "------------------------------------";
	}

	// GETTERS & SETTERS for facts
	public String getUsesWeapon() {
		return usesWeapon;
	}

	public void setUsesWeapon(String usesWeapon) {
		this.usesWeapon = usesWeapon;
	}

	public String getUsesGrossViolence() {
		return usesGrossViolence;
	}

	public void setUsesGrossViolence(String usesGrossViolence) {
		this.usesGrossViolence = usesGrossViolence;
	}

	public String getViolatesIntegrity() {
		return violatesIntegrity;
	}

	public void setViolatesIntegrity(String violatesIntegrity) {
		this.violatesIntegrity = violatesIntegrity;
	}

	public String getCausesSeriousInjury() {
		return causesSeriousInjury;
	}

	public void setCausesSeriousInjury(String causesSeriousInjury) {
		this.causesSeriousInjury = causesSeriousInjury;
	}

	public String getVictimIsMinor() {
		return victimIsMinor;
	}

	public void setVictimIsMinor(String victimIsMinor) {
		this.victimIsMinor = victimIsMinor;
	}

	public String getCausesDeath() {
		return causesDeath;
	}

	public void setCausesDeath(String causesDeath) {
		this.causesDeath = causesDeath;
	}

	public String getViolatesProtectionMeasures() {
		return violatesProtectionMeasures;
	}

	public void setViolatesProtectionMeasures(String violatesProtectionMeasures) {
		this.violatesProtectionMeasures = violatesProtectionMeasures;
	}

	public String getLegalObligationToSupport() {
		return legalObligationToSupport;
	}

	public void setLegalObligationToSupport(String legalObligationToSupport) {
		this.legalObligationToSupport = legalObligationToSupport;
	}

	public String getDutyEstablishedByCourtOrder() {
		return dutyEstablishedByCourtOrder;
	}

	public void setDutyEstablishedByCourtOrder(String dutyEstablishedByCourtOrder) {
		this.dutyEstablishedByCourtOrder = dutyEstablishedByCourtOrder;
	}

	public String getFailsToPaySupport() {
		return failsToPaySupport;
	}

	public void setFailsToPaySupport(String failsToPaySupport) {
		this.failsToPaySupport = failsToPaySupport;
	}

	public String getJustifiedReasonsForNonpayment() {
		return justifiedReasonsForNonpayment;
	}

	public void setJustifiedReasonsForNonpayment(String justifiedReasonsForNonpayment) {
		this.justifiedReasonsForNonpayment = justifiedReasonsForNonpayment;
	}

	public String getSevereConsequencesForVictim() {
		return severeConsequencesForVictim;
	}

	public void setSevereConsequencesForVictim(String severeConsequencesForVictim) {
		this.severeConsequencesForVictim = severeConsequencesForVictim;
	}

	public String getVerdictType() {
		return verdictType;
	}

	public void setVerdictType(String verdictType) {
		this.verdictType = verdictType;
	}
}