package connector;

import java.io.FileReader;
import java.nio.file.*;
import java.util.*;

import com.opencsv.CSVReader;

import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import model.CaseDescription;

public class CsvConnector implements Connector {

	// folder gdje se nalaze svi case CSV fajlovi
	private static final String CASES_PATH = "src/main/resources";

	@Override
	public Collection<CBRCase> retrieveAllCases() {

		List<CBRCase> cases = new ArrayList<>();

		try {

			Files.walk(Paths.get(CASES_PATH))
					.filter(p -> p.toString().endsWith(".csv"))
					.forEach(path -> {

						// preskoči eventualni master fajl
						if (path.getFileName().toString().equals("presude_master.csv"))
							return;

						try (CSVReader reader = new CSVReader(new FileReader(path.toFile()))) {

							String[] values;

							reader.readNext(); // header

							// svaki fajl = jedan case → čitamo prvi podatak red
							values = reader.readNext();

							if (values != null && values.length >= 9) {

								CBRCase cbrCase = new CBRCase();
								CaseDescription cd = new CaseDescription();

								// MAPIRANJE PREMA TVOM FORMATU:
								// 0 act_description
								// 1 legal_qualification
								// 2 victim
								// 3 time_period
								// 4 means_of_commission
								// 5 injury_severity
								// 6 penalty
								// 7 security_measure
								// 8 case_id
								// ostale kolone ignorisemo

								cd.setActDescription(values[0]);
								cd.setLegalQualification(values[1]);
								cd.setVictim(values[2]);
								cd.setTimePeriod(values[3]);
								cd.setMeansOfCommission(values[4]);
								cd.setInjurySeverity(values[5]);
								cd.setPenalty(values[6]);
								cd.setSecurityMeasure(values[7]);
								cd.setCaseId(values[8]);

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

	@Override
	public void close() {}

	@Override
	public void deleteCases(Collection<CBRCase> cases) {}

	@Override
	public void storeCases(Collection<CBRCase> cases) {}

	@Override
	public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter filter) {
		return null;
	}

	@Override
	public void initFromXMLfile(java.net.URL url) {}
}