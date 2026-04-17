package cbr;

import java.util.*;

import connector.CsvConnector;
import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.EqualsStringIgnoreCase;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;
import model.CaseDescription;
import similarity.StringLevenshteinSimilarity;

public class CbrApplication implements StandardCBRApplication {

	Connector connector;
	CBRCaseBase caseBase;
	NNConfig simConfig;

	@Override
	public void configure() {

		connector = new CsvConnector();
		caseBase = new LinealCaseBase();

		simConfig = new NNConfig();
		simConfig.setDescriptionSimFunction(new Average());

		StringLevenshteinSimilarity stringSim = new StringLevenshteinSimilarity();

		simConfig.addMapping(new Attribute("legalQualification", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("legalQualification", CaseDescription.class), 3.0);
		simConfig.addMapping(new Attribute("victim", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("victim", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("meansOfCommission", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("meansOfCommission", CaseDescription.class), 2.0);
		simConfig.addMapping(new Attribute("injurySeverity", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("injurySeverity", CaseDescription.class), 2.0);
		simConfig.addMapping(new Attribute("numberOfVictims", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("numberOfVictims", CaseDescription.class), 1.5);
		simConfig.addMapping(new Attribute("repetition", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("repetition", CaseDescription.class), 2.0);
		simConfig.addMapping(new Attribute("previousConviction", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("previousConviction", CaseDescription.class), 2.0);
		simConfig.addMapping(new Attribute("verdictType", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("verdictType", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("mitigatingFactors", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("mitigatingFactors", CaseDescription.class), 1.5);
		simConfig.addMapping(new Attribute("aggravatingFactors", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("aggravatingFactors", CaseDescription.class), 1.5);
		simConfig.addMapping(new Attribute("court", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("court", CaseDescription.class), 0.5);
		simConfig.addMapping(new Attribute("judge", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("judge", CaseDescription.class), 0.5);
		simConfig.addMapping(new Attribute("clerk", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("clerk", CaseDescription.class), 0.5);
		simConfig.addMapping(new Attribute("accused", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("accused", CaseDescription.class), 0.5);
		simConfig.addMapping(new Attribute("decisionDate", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("decisionDate", CaseDescription.class), 0.5);
		simConfig.addMapping(new Attribute("usesWeapon", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("usesWeapon", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("usesGrossViolence", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("usesGrossViolence", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("violatesIntegrity", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("violatesIntegrity", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("causesSeriousInjury", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("causesSeriousInjury", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("victimIsMinor", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("victimIsMinor", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("causesDeath", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("causesDeath", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("violatesProtectionMeasures", CaseDescription.class),
				new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("violatesProtectionMeasures", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("legalObligationToSupport", CaseDescription.class),
				new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("legalObligationToSupport", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("dutyEstablishedByCourtOrder", CaseDescription.class),
				new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("dutyEstablishedByCourtOrder", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("failsToPaySupport", CaseDescription.class), new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("failsToPaySupport", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("justifiedReasonsForNonpayment", CaseDescription.class),
				new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("justifiedReasonsForNonpayment", CaseDescription.class), 1.0);
		simConfig.addMapping(new Attribute("severeConsequencesForVictim", CaseDescription.class),
				new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("severeConsequencesForVictim", CaseDescription.class), 1.0);


	}

	@Override
	public CBRCaseBase preCycle() throws ExecutionException {
		caseBase.init(connector);
		return caseBase;
	}

	@Override
	public void cycle(CBRQuery query) throws ExecutionException {

		Collection<RetrievalResult> results = NNScoringMethod.evaluateSimilarity(
				caseBase.getCases(),
				query,
				simConfig);

		results = SelectCases.selectTopKRR(results, 5);

		System.out.println("\n==============================");
		System.out.println("      NAJBLIZI SLUČAJEVI");
		System.out.println("==============================");

		for (RetrievalResult rr : results) {
			System.out.println(rr.get_case().getDescription());
			System.out.println("Sličnost: " + String.format("%.4f", rr.getEval()));
			System.out.println("----------------------------------");
		}
	}

	@Override
	public void postCycle() {
	}

	public static void main(String[] args) throws Exception {

		CbrApplication app = new CbrApplication();
		app.configure();
		app.preCycle();

		CaseDescription query = new CaseDescription();
		query.setCaseId("QUERY-1");
		query.setLegalQualification("nasilje u porodici ili u porodičnoj zajednici");
		query.setVictim("");
		query.setMeansOfCommission("nožem");
		query.setInjurySeverity("lake tjelesne povrede");
		query.setNumberOfVictims("3");
		query.setRepetition("više puta");
		query.setPreviousConviction("ne");
		query.setMitigatingFactors("");
		query.setAggravatingFactors("");
		query.setVerdictType("");
		query.setCourt("");
		query.setJudge("");
		query.setClerk("");
		query.setAccused("");
		query.setDecisionDate("");
		query.setUsesWeapon("");
		query.setUsesGrossViolence("");
		query.setViolatesIntegrity("");
		query.setCausesSeriousInjury("");
		query.setVictimIsMinor("");
		query.setCausesDeath("");
		query.setViolatesProtectionMeasures("");
		query.setLegalObligationToSupport("");
		query.setDutyEstablishedByCourtOrder("");
		query.setFailsToPaySupport("");
		query.setJustifiedReasonsForNonpayment("");
		query.setSevereConsequencesForVictim("");

		CBRQuery cbrQuery = new CBRQuery();
		cbrQuery.setDescription(query);

		app.cycle(cbrQuery);
	}
	public List<Map<String, Object>> executeRetrieval(CBRQuery query) throws ExecutionException {
		// 1. Izvrši bodovanje sličnosti
		Collection<RetrievalResult> results = NNScoringMethod.evaluateSimilarity(
				caseBase.getCases(),
				query,
				simConfig);

		// DEBUG PRINT: Vidi koliki su rezultati pre selekcije
		System.out.println("Poređenje završeno. Rezultati:");
		for (RetrievalResult rr : results) {
			CaseDescription cd = (CaseDescription) rr.get_case().getDescription();
			System.out.println("Presuda: " + cd.getCaseId() + " | Sličnost: " + rr.getEval());
		}

		// 2. Selektuj top 5 rezultata
		results = SelectCases.selectTopKRR(results, 5);

		// 3. Pretvori u JSON odgovor
		List<Map<String, Object>> response = new ArrayList<>();
		for (RetrievalResult rr : results) {
			CaseDescription cd = (CaseDescription) rr.get_case().getDescription();
			Map<String, Object> item = new HashMap<>();
			item.put("caseId", cd.getCaseId());
			item.put("legalQualification", cd.getLegalQualification());
			item.put("similarity", rr.getEval());
			item.put("court", cd.getCourt());
			item.put("verdictType", cd.getVerdictType());
			response.add(item);
		}
		return response;
	}
}