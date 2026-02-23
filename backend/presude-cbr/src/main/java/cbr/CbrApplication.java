package cbr;

import java.util.Collection;

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

		simConfig.addMapping(new Attribute("meansOfCommission", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("meansOfCommission", CaseDescription.class), 2.0);

		simConfig.addMapping(new Attribute("injurySeverity", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("injurySeverity", CaseDescription.class), 2.0);

		simConfig.addMapping(new Attribute("repetition", CaseDescription.class),
				new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("repetition", CaseDescription.class), 2.0);

		simConfig.addMapping(new Attribute("previousConviction", CaseDescription.class),
				new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("previousConviction", CaseDescription.class), 2.0);

		simConfig.addMapping(new Attribute("numberOfVictims", CaseDescription.class),
				new EqualsStringIgnoreCase());
		simConfig.setWeight(new Attribute("numberOfVictims", CaseDescription.class), 1.5);

		simConfig.addMapping(new Attribute("mitigatingFactors", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("mitigatingFactors", CaseDescription.class), 1.5);

		simConfig.addMapping(new Attribute("aggravatingFactors", CaseDescription.class), stringSim);
		simConfig.setWeight(new Attribute("aggravatingFactors", CaseDescription.class), 1.5);


	}

	@Override
	public CBRCaseBase preCycle() throws ExecutionException {
		caseBase.init(connector);
		return caseBase;
	}

	@Override
	public void cycle(CBRQuery query) throws ExecutionException {

		Collection<RetrievalResult> results =
				NNScoringMethod.evaluateSimilarity(
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
	public void postCycle() {}

	public static void main(String[] args) throws Exception {

		CbrApplication app = new CbrApplication();
		app.configure();
		app.preCycle();

		CaseDescription query = new CaseDescription();

		query.setCaseId("QUERY-1");
		query.setLegalQualification("nasilje u porodici ili u porodičnoj zajednici");
		query.setMeansOfCommission("nožem");
		query.setInjurySeverity("lake tjelesne povrede");
		query.setRepetition("više puta");
		query.setPreviousConviction("ne");
		query.setNumberOfVictims("3");

		CBRQuery cbrQuery = new CBRQuery();
		cbrQuery.setDescription(query);

		app.cycle(cbrQuery);
	}
}