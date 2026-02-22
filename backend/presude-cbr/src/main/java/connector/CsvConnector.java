package connector;

import java.io.FileReader;
import java.nio.file.*;
import java.util.*;

import com.opencsv.CSVReader;
import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import model.CaseDescription;

public class CsvConnector implements Connector {

	private static final String CASES_PATH = "src/main/resources";

	@Override
	public Collection<CBRCase> retrieveAllCases() {

		List<CBRCase> cases = new ArrayList<>();

		try {

			Files.walk(Paths.get(CASES_PATH))
					.filter(p -> p.toString().endsWith(".csv"))
					.forEach(path -> {

						try (CSVReader reader = new CSVReader(new FileReader(path.toFile()))) {

							reader.readNext(); // header

							String[] values = reader.readNext();

							if (values != null && values.length >= 20) {

								CBRCase cbrCase = new CBRCase();
								CaseDescription cd = new CaseDescription();

								cd.setActDescription(values[0]);
								cd.setLegalQualification(values[1]);
								cd.setVictim(values[2]);
								cd.setTimePeriod(values[3]);
								cd.setMeansOfCommission(values[4]);
								cd.setInjurySeverity(values[5]);
								cd.setNumberOfVictims(values[6]);
								cd.setRepetition(values[7]);
								cd.setPreviousConviction(values[8]);
								cd.setMitigatingFactors(values[9]);
								cd.setAggravatingFactors(values[10]);
								cd.setPenalty(values[11]);
								cd.setSecurityMeasure(values[12]);
								cd.setCaseId(values[13]);

								cbrCase.setDescription(cd);
								cases.add(cbrCase);
							}

						} catch (Exception e) {
							System.out.println("Greška u fajlu: " + path.getFileName());
						}

					});

		} catch (Exception e) {
			e.printStackTrace();
		}

		return cases;
	}

	@Override public void close() {}
	@Override public void deleteCases(Collection<CBRCase> cases) {}
	@Override public void storeCases(Collection<CBRCase> cases) {}
	@Override public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter filter) { return null; }
	@Override public void initFromXMLfile(java.net.URL url) {}
}