package connector;

import java.io.FileReader;
import java.nio.file.*;
import java.util.*;

import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import model.CaseDescription;


import java.io.FileReader;
import java.nio.file.*;
import java.util.*;

import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import model.CaseDescription;

public class CsvConnector implements Connector {

	// Putanja do resursa gde se nalazi tvoj glavni fajl
	private static final String CASES_PATH = "src/main/resources";

	@Override
	public Collection<CBRCase> retrieveAllCases() {
		List<CBRCase> cases = new ArrayList<>();

		// Definišemo direktnu putanju do fajla da izbegnemo Files.walk i dupliranje baze
		Path path = Paths.get(CASES_PATH, "presude.csv");

		System.out.println("Pokušavam da učitam bazu iz: " + path.toAbsolutePath());

		if (!Files.exists(path)) {
			System.out.println("❌ ERROR: Fajl presude.csv nije pronađen na putanji: " + path.toAbsolutePath());
			return cases;
		}

		try (CSVReader reader = new CSVReaderBuilder(new FileReader(path.toFile()))
				.withCSVParser(new CSVParserBuilder().withSeparator(';').build())
				.build()) {

			// Čitamo zaglavlje (header)
			String[] header = reader.readNext();
			if (header == null) {
				System.out.println("⚠️ Fajl presude.csv je prazan!");
				return cases;
			}

			// Mapiramo nazive kolona na indekse radi sigurnijeg čitanja
			Map<String, Integer> colIdx = new HashMap<>();
			for (int i = 0; i < header.length; i++) {
				colIdx.put(header[i].trim(), i);
			}

			String[] values;
			while ((values = reader.readNext()) != null) {
				// Preskačemo neispravne redove
				if (values.length < header.length) continue;

				CBRCase cbrCase = new CBRCase();
				CaseDescription cd = new CaseDescription();

				// Mapiranje svih polja iz CSV-a u CaseDescription objekat
				cd.setCaseId(getValue(colIdx, values, "caseId"));
				cd.setLegalQualification(getValue(colIdx, values, "legalQualification"));
				cd.setMeansOfCommission(getValue(colIdx, values, "meansOfCommission"));
				cd.setInjurySeverity(getValue(colIdx, values, "injurySeverity"));
				cd.setNumberOfVictims(getValue(colIdx, values, "numberOfVictims"));
				cd.setRepetition(getValue(colIdx, values, "repetition"));
				cd.setPreviousConviction(getValue(colIdx, values, "previousConviction"));
				cd.setMitigatingFactors(getValue(colIdx, values, "mitigatingFactors"));
				cd.setAggravatingFactors(getValue(colIdx, values, "aggravatingFactors"));
				cd.setVerdictType(getValue(colIdx, values, "verdictType"));

				// Polja za logičko rezonovanje
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

				cbrCase.setDescription(cd);
				cases.add(cbrCase);
			}

			System.out.println("✅ Uspešno učitana baza. Ukupno presuda: " + cases.size());

		} catch (Exception e) {
			System.out.println("❌ Greška pri čitanju baze: " + e.getMessage());
			e.printStackTrace();
		}

		return cases;
	}

	// Pomoćna metoda sa ugrađenim .trim() za čišćenje nevidljivih razmaka
	private String getValue(Map<String, Integer> colIdx, String[] values, String col) {
		Integer idx = colIdx.get(col);
		if (idx != null && idx < values.length) {
			String val = values[idx];
			return val != null ? val.trim() : "";
		}
		return "";
	}

	@Override
	public void close() { }

	@Override
	public void deleteCases(Collection<CBRCase> cases) { }

	@Override
	public void storeCases(Collection<CBRCase> cases) { }

	@Override
	public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter filter) {
		return null;
	}

	@Override
	public void initFromXMLfile(java.net.URL url) { }
}