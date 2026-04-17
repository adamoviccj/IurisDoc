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

							reader.readNext(); // preskoči header
							String[] values = reader.readNext();

							// Smanjio sam na 28 jer tvoj CSV ima 29 kolona
							if (values != null && values.length >= 28) {
								CBRCase cbrCase = new CBRCase();
								CaseDescription cd = new CaseDescription();

								int i = 0;
								cd.setCaseId(values[i++]);
								cd.setLegalQualification(values[i++]);
								cd.setVictim(values[i++]);
								cd.setMeansOfCommission(values[i++]);
								cd.setInjurySeverity(values[i++]);
								cd.setNumberOfVictims(values[i++]);
								cd.setRepetition(values[i++]);
								cd.setPreviousConviction(values[i++]);
								cd.setMitigatingFactors(values[i++]);
								cd.setAggravatingFactors(values[i++]);
								cd.setVerdictType(values[i++]);
								cd.setCourt(values[i++]);
								cd.setJudge(values[i++]);
								cd.setClerk(values[i++]);
								cd.setAccused(values[i++]);
								cd.setDecisionDate(values[i++]);

								// PAŽNJA: Witnesses je u CSV-u ali ga preskačemo da bi se indexi poklopili sa facts
								i++; // preskačemo witnesses (values[16])

								cd.setUsesWeapon(values[i++]);
								cd.setUsesGrossViolence(values[i++]);
								cd.setViolatesIntegrity(values[i++]);
								cd.setCausesSeriousInjury(values[i++]);
								cd.setVictimIsMinor(values[i++]);
								cd.setCausesDeath(values[i++]);
								cd.setViolatesProtectionMeasures(values[i++]);
								cd.setLegalObligationToSupport(values[i++]);
								cd.setDutyEstablishedByCourtOrder(values[i++]);
								cd.setFailsToPaySupport(values[i++]);
								cd.setJustifiedReasonsForNonpayment(values[i++]);
								cd.setSevereConsequencesForVictim(values[i++]);

								cbrCase.setDescription(cd);
								cases.add(cbrCase);
								System.out.println("✅ Uspešno učitana presuda: " + cd.getCaseId());
							} else {
								System.out.println("⚠️ Fajl " + path.getFileName() + " ima premalo kolona: " + (values != null ? values.length : 0));
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