package model;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class CaseDescription implements CaseComponent {

	private String caseId;

	private String actDescription;
	private String legalQualification;
	private String victim;
	private String timePeriod;
	private String meansOfCommission;
	private String injurySeverity;

	private String numberOfVictims;
	private String repetition;
	private String previousConviction;

	private String mitigatingFactors;
	private String aggravatingFactors;

	private String penalty;
	private String securityMeasure;

	private String court;
	private String judge;
	private String clerk;
	private String accused;
	private String decisionDate;
	private String witnesses;

	@Override
	public Attribute getIdAttribute() {
		return new Attribute("caseId", this.getClass());
	}

	// GETTERS & SETTERS

	public String getCaseId() { return caseId; }
	public void setCaseId(String caseId) { this.caseId = caseId; }

	public String getActDescription() { return actDescription; }
	public void setActDescription(String actDescription) { this.actDescription = actDescription; }

	public String getLegalQualification() { return legalQualification; }
	public void setLegalQualification(String legalQualification) { this.legalQualification = legalQualification; }

	public String getVictim() { return victim; }
	public void setVictim(String victim) { this.victim = victim; }

	public String getTimePeriod() { return timePeriod; }
	public void setTimePeriod(String timePeriod) { this.timePeriod = timePeriod; }

	public String getMeansOfCommission() { return meansOfCommission; }
	public void setMeansOfCommission(String meansOfCommission) { this.meansOfCommission = meansOfCommission; }

	public String getInjurySeverity() { return injurySeverity; }
	public void setInjurySeverity(String injurySeverity) { this.injurySeverity = injurySeverity; }

	public String getNumberOfVictims() { return numberOfVictims; }
	public void setNumberOfVictims(String numberOfVictims) { this.numberOfVictims = numberOfVictims; }

	public String getRepetition() { return repetition; }
	public void setRepetition(String repetition) { this.repetition = repetition; }

	public String getPreviousConviction() { return previousConviction; }
	public void setPreviousConviction(String previousConviction) { this.previousConviction = previousConviction; }

	public String getMitigatingFactors() { return mitigatingFactors; }
	public void setMitigatingFactors(String mitigatingFactors) { this.mitigatingFactors = mitigatingFactors; }

	public String getAggravatingFactors() { return aggravatingFactors; }
	public void setAggravatingFactors(String aggravatingFactors) { this.aggravatingFactors = aggravatingFactors; }

	public String getPenalty() { return penalty; }
	public void setPenalty(String penalty) { this.penalty = penalty; }

	public String getSecurityMeasure() { return securityMeasure; }
	public void setSecurityMeasure(String securityMeasure) { this.securityMeasure = securityMeasure; }

	public String getCourt() { return court; }
	public void setCourt(String court) { this.court = court; }

	public String getJudge() { return judge; }
	public void setJudge(String judge) { this.judge = judge; }

	public String getClerk() { return clerk; }
	public void setClerk(String clerk) { this.clerk = clerk; }

	public String getAccused() { return accused; }
	public void setAccused(String accused) { this.accused = accused; }

	public String getDecisionDate() { return decisionDate; }
	public void setDecisionDate(String decisionDate) { this.decisionDate = decisionDate; }

	public String getWitnesses() { return witnesses; }
	public void setWitnesses(String witnesses) { this.witnesses = witnesses; }

	@Override
	public String toString() {

		return "\n------------------------------------\n"
				+ "Case ID: " + caseId + "\n"
				+ "Court: " + court + "\n"
				+ "Judge: " + judge + "\n"
				+ "Legal qualification: " + legalQualification + "\n"
				+ "Means of commission: " + meansOfCommission + "\n"
				+ "Injury severity: " + injurySeverity + "\n"
				+ "Penalty: " + penalty + "\n"
				+ "Security measure: " + securityMeasure + "\n"
				+ "------------------------------------";
	}
}