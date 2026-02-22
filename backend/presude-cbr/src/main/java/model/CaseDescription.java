package model;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

public class CaseDescription implements CaseComponent {

	private String caseId;

	private String legalQualification;
	private String meansOfCommission;
	private String injurySeverity;
	private String penalty;
	private String securityMeasure;
	private String victim;
	private String timePeriod;

	private String actDescription;

	public String getActDescription() {
		return actDescription;
	}

	public void setActDescription(String actDescription) {
		this.actDescription = actDescription;
	}

	public String getCaseId() { return caseId; }
	public void setCaseId(String caseId) { this.caseId = caseId; }

	public String getLegalQualification() { return legalQualification; }
	public void setLegalQualification(String legalQualification) { this.legalQualification = legalQualification; }

	public String getMeansOfCommission() { return meansOfCommission; }
	public void setMeansOfCommission(String meansOfCommission) { this.meansOfCommission = meansOfCommission; }

	public String getInjurySeverity() { return injurySeverity; }
	public void setInjurySeverity(String injurySeverity) { this.injurySeverity = injurySeverity; }

	public String getPenalty() { return penalty; }
	public void setPenalty(String penalty) { this.penalty = penalty; }

	public String getSecurityMeasure() { return securityMeasure; }
	public void setSecurityMeasure(String securityMeasure) { this.securityMeasure = securityMeasure; }

	public String getVictim() { return victim; }
	public void setVictim(String victim) { this.victim = victim; }

	public String getTimePeriod() { return timePeriod; }
	public void setTimePeriod(String timePeriod) { this.timePeriod = timePeriod; }

	@Override
	public Attribute getIdAttribute() {
		return new Attribute("caseId", this.getClass());
	}
	@Override
	public String toString() {
		return "CaseId=" + caseId +
				", legalQualification=" + legalQualification +
				", injurySeverity=" + injurySeverity;
	}
}