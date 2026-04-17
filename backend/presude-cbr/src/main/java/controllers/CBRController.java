package controllers;

import cbr.CbrApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import model.CaseDescription;
import org.springframework.web.bind.annotation.*;
import java.util.*;

@RestController
@RequestMapping("/api/cbr")
@CrossOrigin(origins = "*") // Dozvoljava Python-u da pristupi
public class CBRController {

    @PostMapping("/recommend")
    public List<Map<String, Object>> getRecommendations(@RequestBody Map<String, Object> payload) {
        CaseDescription queryDesc = new CaseDescription();

        // Popunjavanje polja iz JSON-a
        queryDesc.setCaseId("QUERY_TEMP");
        queryDesc.setCourt(getString(payload, "court"));
        queryDesc.setAccused(getString(payload, "accused"));
        queryDesc.setLegalQualification(getString(payload, "legalQualification"));

        // Polja iz facts.rdf (dr-device rezultati)
        queryDesc.setUsesWeapon(getString(payload, "usesWeapon"));
        queryDesc.setUsesGrossViolence(getString(payload, "usesGrossViolence"));
        queryDesc.setViolatesIntegrity(getString(payload, "violatesIntegrity"));
        queryDesc.setCausesSeriousInjury(getString(payload, "causesSeriousInjury"));
        queryDesc.setVictimIsMinor(getString(payload, "victimIsMinor"));
        queryDesc.setCausesDeath(getString(payload, "causesDeath"));
        queryDesc.setViolatesProtectionMeasures(getString(payload, "violatesProtectionMeasures"));
        queryDesc.setRepetition(getString(payload, "repetition"));
        queryDesc.setPreviousConviction(getString(payload, "previousConviction"));
        queryDesc.setNumberOfVictims(getString(payload, "numberOfVictims"));
        queryDesc.setFailsToPaySupport(getString(payload, "failsToPaySupport"));

        // Slobodan tekst
        queryDesc.setMeansOfCommission(getString(payload, "meansOfCommission"));

        CbrApplication app = new CbrApplication();
        try {
            app.configure();
            app.preCycle();

            CBRQuery query = new CBRQuery();
            query.setDescription(queryDesc);

            // SADA POZIVAMO NOVU METODU KOJA VRAĆA LISTU
            return app.executeRetrieval(query);

        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    // Pomoćna metoda da izbegnemo NullPointerException
    private String getString(Map<String, Object> payload, String key) {
        Object val = payload.get(key);
        return val != null ? String.valueOf(val) : "";
    }
}