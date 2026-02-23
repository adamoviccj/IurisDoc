package cbr;

import java.util.Arrays;
import java.util.Collection;

import connector.CsvConnector;
import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
//import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.*;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;
import model.CaseDescription;
import similarity.TabularSimilarity;

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

		// STRING ATRIBUTI
		simConfig.addMapping(new Attribute("legalQualification", CaseDescription.class),
				new EqualsStringIgnoreCase());

		simConfig.addMapping(new Attribute("meansOfCommission", CaseDescription.class),
				new EqualsStringIgnoreCase());

		simConfig.addMapping(new Attribute("victim", CaseDescription.class),
				new EqualsStringIgnoreCase());

		simConfig.addMapping(new Attribute("securityMeasure", CaseDescription.class),
				new EqualsStringIgnoreCase());

		// INJURY (prilagođena sličnost)
		TabularSimilarity injurySim =
				new TabularSimilarity(Arrays.asList("nema tjelesne povrede", "laka", "teska"));

		injurySim.setSimilarity("laka", "teska", 0.5);
		injurySim.setSimilarity("nema tjelesne povrede", "laka", 0.6);

		simConfig.addMapping(
				new Attribute("injurySeverity", CaseDescription.class),
				injurySim);

		// PENALTY i TIME
		simConfig.addMapping(new Attribute("penalty", CaseDescription.class),
				new EqualsStringIgnoreCase());

		simConfig.addMapping(new Attribute("timePeriod", CaseDescription.class),
				new Equal());
	}

	@Override
	public CBRCaseBase preCycle() throws ExecutionException {
		caseBase.init(connector);
		return caseBase;
	}

	@Override
	public void cycle(CBRQuery query) throws ExecutionException {

		Collection<RetrievalResult> results =
				NNScoringMethod.evaluateSimilarity(caseBase.getCases(), query, simConfig);

		results = SelectCases.selectTopKRR(results, 5);

		System.out.println("Najbliži slučajevi:");

		for (RetrievalResult rr : results)
			System.out.println(rr.get_case().getDescription()
					+ " -> similarity: " + rr.getEval());
	}

	@Override
	public void postCycle() {}

	public static void main(String[] args) throws Exception {

		CbrApplication app = new CbrApplication();
		app.configure();
		app.preCycle();

		CaseDescription queryDesc = new CaseDescription();

		queryDesc.setCaseId("QUERY-1");

		queryDesc.setLegalQualification("nasilje u porodici ili u porodičnoj zajednici");
		queryDesc.setMeansOfCommission("prijetnje");
		queryDesc.setInjurySeverity("nema tjelesne povrede");
		queryDesc.setPenalty("uslovna osuda");
		queryDesc.setSecurityMeasure("");
		queryDesc.setVictim("P. D.");
		queryDesc.setTimePeriod("05.06.2022–05.02.2024");

		CBRQuery query = new CBRQuery();
		query.setDescription(queryDesc);

		app.cycle(query);
	}
}