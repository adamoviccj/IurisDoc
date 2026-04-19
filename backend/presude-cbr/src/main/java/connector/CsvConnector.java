package connector;

import java.io.FileReader;
import java.nio.file.*;
import java.util.*;

import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import model.CaseDescription;

public class CsvConnector implements Connector {

	private static final String CASES_PATH = "src/main/resources";
	@Override
	public Collection<CBRCase> retrieveAllCases() {
		List<CBRCase> cases = new ArrayList<>();
		try {
			System.out.println("Pokušavam da učitam CSV fajlove iz: " + Paths.get(CASES_PATH).toAbsolutePath());

			Files.walk(Paths.get(CASES_PATH))
					.filter(p -> p.toString().endsWith(".csv"))
					.forEach(path -> {
						System.out.println("Pronađen fajl: " + path.getFileName());
						try (CSVReader reader = new CSVReaderBuilder(new FileReader(path.toFile()))
								.withCSVParser(new CSVParserBuilder().withSeparator(';').build())
								.build()) {

							String[] header = reader.readNext();
							if (header == null) {
								System.out.println("⚠️ Fajl " + path.getFileName() + " nema header!");
								return;
							}
							Map<String, Integer> colIdx = new HashMap<>();
							for (int i = 0; i < header.length; i++) {
								colIdx.put(header[i], i);
							}

							String[] values;
							while ((values = reader.readNext()) != null) {
								if (values.length < header.length) continue;
								CBRCase cbrCase = new CBRCase();
								CaseDescription cd = new CaseDescription();

								String caseId = getValue(colIdx, values, "caseId");
								cd.setCaseId(caseId);
								cd.setLegalQualification(getValue(colIdx, values, "legalQualification"));
								cd.setMeansOfCommission(getValue(colIdx, values, "meansOfCommission"));
								cd.setInjurySeverity(getValue(colIdx, values, "injurySeverity"));
								cd.setNumberOfVictims(getValue(colIdx, values, "numberOfVictims"));
								cd.setRepetition(getValue(colIdx, values, "repetition"));
								cd.setPreviousConviction(getValue(colIdx, values, "previousConviction"));
								cd.setMitigatingFactors(getValue(colIdx, values, "mitigatingFactors"));
								cd.setAggravatingFactors(getValue(colIdx, values, "aggravatingFactors"));
								cd.setVerdictType(getValue(colIdx, values, "verdictType"));
								cd.setUsesWeapon(getValue(colIdx, values, "usesWeapon"));
								cd.setUsesGrossViolence(getValue(colIdx, values, "usesGrossViolence"));
								cd.setViolatesIntegrity(getValue(colIdx, values, "violatesIntegrity"));
								cd.setCausesSeriousInjury(getValue(colIdx, values, "causesSeriousInjury"));
								cd.setVictimIsMinor(getValue(colIdx, values, "victimIsMinor"));
								cd.setCausesDeath(getValue(colIdx, values, "causesDeath"));
								cd.setViolatesProtectionMeasures(getValue(colIdx, values, "violatesProtectionMeasures"));
								cd.setLegalObligationToSupport(getValue(colIdx, values, "legalObligationToSupport"));
								cd.setDutyEstablishedByCourtOrder(getValue(colIdx, values, "dutyEstablishedByCourtOrder"));
								cd.setFailsToPaySupport(getValue(colIdx, values, "failsToPaySupport"));
								cd.setJustifiedReasonsForNonpayment(getValue(colIdx, values, "justifiedReasonsForNonpayment"));
								cd.setSevereConsequencesForVictim(getValue(colIdx, values, "severeConsequencesForVictim"));

								// Ostale kolone po potrebi (npr. sud, sudija, žrtva...)
								// cd.setCourt(getValue(colIdx, values, "court"));
								// cd.setJudge(getValue(colIdx, values, "judge"));
								// cd.setClerk(getValue(colIdx, values, "clerk"));
								// cd.setAccused(getValue(colIdx, values, "accused"));
								// cd.setDecisionDate(getValue(colIdx, values, "decisionDate"));

								cbrCase.setDescription(cd);
								cases.add(cbrCase);
								System.out.println("✅ Uspešno učitana presuda: " + cd.getCaseId());
							}

						} catch (Exception e) {
							System.out.println("❌ Greška u fajlu: " + path.getFileName() + " -> " + e.getMessage());
						}
					});

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("UKUPNO UČITANO PRESUDA U BAZU: " + cases.size());
		return cases;
	}

	// Pomocna metoda za sigurno dohvatanje vrednosti iz mape
	private String getValue(Map<String, Integer> colIdx, String[] values, String col) {
		Integer idx = colIdx.get(col);
		if (idx != null && idx < values.length) {
			return values[idx];
		}
		return "";
	}
//
//	@Override
//	public Collection<CBRCase> retrieveAllCases() {
//
//		List<CBRCase> cases = new ArrayList<>();
//
//		try {
//
//			Files.walk(Paths.get(CASES_PATH))
//					.filter(p -> p.toString().endsWith(".csv"))
//					.forEach(path -> {
//
//						try (CSVReader reader = new CSVReaderBuilder(new FileReader(path.toFile()))
//								.withCSVParser(new CSVParserBuilder().withSeparator(';').build())
//								.build()) {
//
//							reader.readNext(); // header
//
//							String[] values = reader.readNext();
//
//							// Očekujemo da su kolone u CSV-u po redosledu kao u CaseDescription klasi
//							// Prilagodi broj kolona prema broju polja
//							if (values != null && values.length >= 30) {
//								CBRCase cbrCase = new CBRCase();
//								CaseDescription cd = new CaseDescription();
//
//								int i = 0;
//								cd.setCaseId(values[i++]);
//								cd.setLegalQualification(values[i++]);
//								cd.setVictim(values[i++]);
//								cd.setMeansOfCommission(values[i++]);
//								cd.setInjurySeverity(values[i++]);
//								cd.setNumberOfVictims(values[i++]);
//								cd.setRepetition(values[i++]);
//								cd.setPreviousConviction(values[i++]);
//								cd.setMitigatingFactors(values[i++]);
//								cd.setAggravatingFactors(values[i++]);
//								cd.setVerdictType(values[i++]);
//								cd.setCourt(values[i++]);
//								cd.setJudge(values[i++]);
//								cd.setClerk(values[i++]);
//								cd.setAccused(values[i++]);
//								cd.setDecisionDate(values[i++]);
//								cd.setUsesWeapon(values[i++]);
//								cd.setUsesGrossViolence(values[i++]);
//								cd.setViolatesIntegrity(values[i++]);
//								cd.setCausesSeriousInjury(values[i++]);
//								cd.setVictimIsMinor(values[i++]);
//								cd.setCausesDeath(values[i++]);
//								cd.setViolatesProtectionMeasures(values[i++]);
//								cd.setLegalObligationToSupport(values[i++]);
//								cd.setDutyEstablishedByCourtOrder(values[i++]);
//								cd.setFailsToPaySupport(values[i++]);
//								cd.setJustifiedReasonsForNonpayment(values[i++]);
//								cd.setSevereConsequencesForVictim(values[i++]);
//
//								cbrCase.setDescription(cd);
//								cases.add(cbrCase);
//							}
//
//						} catch (Exception e) {
//							System.out.println("Greška u fajlu: " + path.getFileName());
//						}
//
//					});
//
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return cases;
//	}

	@Override
	public void close() {
	}

	@Override
	public void deleteCases(Collection<CBRCase> cases) {
	}

	@Override
	public void storeCases(Collection<CBRCase> cases) {
	}

	@Override
	public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter filter) {
		return null;
	}

	@Override
	public void initFromXMLfile(java.net.URL url) {
	}
}