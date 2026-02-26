import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { HttpClient, HttpClientModule } from '@angular/common/http'; // dodato HttpClientModule
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule } from '@angular/material/select';
import { MatOptionModule } from '@angular/material/core';
import { MatCheckboxModule } from '@angular/material/checkbox';

interface Person {
  id: string;
  name: string;
}

interface Law {
  id: string;
  name: string;
}

@Component({
  selector: 'app-generate-judgement',
  imports: [
    CommonModule,
    FormsModule,
    HttpClientModule,        // <-- dodat
    MatFormFieldModule,
    MatInputModule,
    MatSelectModule,
    MatOptionModule,
    MatCheckboxModule
  ],
  templateUrl: './generate-judgement.html',
  styleUrls: ['./generate-judgement.css']
})
export class GenerateJudgement {
  // Sud i sudija
  court = '';
  judge: Person = { id: '', name: '' };
  clerk: Person = { id: '', name: '' };

  // Strane u postupku
  accused: Person = { id: '', name: '' };
  prosecutor: Person = { id: '', name: '' };
  victims: Person[] = [];
  lawyers: Person[] = [];

  // Zakoni i članci
  laws: Law[] = [];
  lawArticles: { id: string; description: string }[] = [];

  // Činjenično stanje i motivacija (slobodan tekst)
  facts = '';
  legal = '';
  context = '';

  // Meta informacije
  generationDate = '';

  // Potpisi
  courtName = '';
  clerkName = '';
  judgeName = '';

  // Strukturirane činjenice za rulebase
  usesGrossViolence: boolean | null = null;
  violatesIntegrity: 'family_member' | 'other' | null = null;
  usesWeapon: boolean | null = null;
  causesSeriousInjury: boolean | null = null;
  causesDeath: boolean | null = null;
  violatesProtectionMeasures: boolean | null = null;
  failsToProvideSupport: 'court_order' | 'none' | null = null;
  causesSeriousConsequences: boolean | null = null;

  // additional structured flags needed by rulebase
  legalObligationToSupport: boolean | null = null;
  dutyEstablishedByCourtOrder: boolean | null = null;
  justifiedReasonsForNonpayment: boolean | null = null;
  victimIsMinor: boolean | null = null;

  // Metode za dodavanje više unosa
  addVictim() { this.victims.push({ id: '', name: '' }); }
  addLawyer() { this.lawyers.push({ id: '', name: '' }); }
  addLaw() { this.laws.push({ id: '', name: '' }); }
  addLawArticle() { this.lawArticles.push({ id: '', description: '' }); }

  // Dodajemo konstruktor sa HttpClient-om
  constructor(private http: HttpClient) {}

  submitFacts() {
  const payload = {
    defendant: this.accused.name,
    usesGrossViolence: this.usesGrossViolence,
    violatesIntegrity: this.violatesIntegrity,
    usesWeapon: this.usesWeapon,
    causesSevereBodilyHarm: this.causesSeriousInjury,          // map to backend name
    causesDeath: this.causesDeath,
    violatesProtectionMeasures: this.violatesProtectionMeasures,
    failsToProvideSupport: this.failsToProvideSupport,
    severeConsequencesForVictim: this.causesSeriousConsequences,
    legalObligationToSupport: this.legalObligationToSupport,
    dutyEstablishedByCourtOrder: this.dutyEstablishedByCourtOrder,
    justifiedReasonsForNonpayment: this.justifiedReasonsForNonpayment,
    victimIsMinor: this.victimIsMinor,

    court: this.court,
    judge: this.judge.name,
    clerk: this.clerk.name,
    accused: this.accused.name,
    prosecutor: this.prosecutor.name,
    victims: this.victims,
    lawyers: this.lawyers,
    facts_text: this.facts,
    legal_text: this.legal,
    context_text: this.context,
    generation_date: this.generationDate,
    court_name: this.courtName,
    clerk_name: this.clerkName,
    judge_name: this.judgeName
  };

  this.http.post('http://localhost:8000/generate-rdf', payload, { responseType: 'blob' }).subscribe({
    next: (response: Blob) => {
      // automatsko preuzimanje RDF fajla
      const url = window.URL.createObjectURL(response);
      const a = document.createElement('a');
      a.href = url;
      a.download = 'facts.rdf';
      a.click();
      window.URL.revokeObjectURL(url);
      console.log('Facts file downloaded');
    },
    error: (err) => console.error('Error:', err)
  });
}
}