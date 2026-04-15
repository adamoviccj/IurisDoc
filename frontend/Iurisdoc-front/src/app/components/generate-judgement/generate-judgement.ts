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
  usesGrossViolence: string | null = null;
  violatesIntegrity: 'family_member_yes' | 'family_member_no' | 'other' | null = null;
  usesWeapon: string | null = null;
  causesSeriousInjury: string | null = null;
  causesDeath: string | null = null;
  violatesProtectionMeasures: string | null = null;
  failsToPaySupport: 'true' | 'false' | null = null;
  causesSeriousConsequences: string | null = null;

  // additional structured flags needed by rulebase
  legalObligationToSupport: string | null = null;
  dutyEstablishedByCourtOrder: string | null = null;
  justifiedReasonsForNonpayment: string | null = null;
  victimIsMinor: string | null = null;

  // Metode za dodavanje više unosa
  addVictim() { this.victims.push({ id: '', name: '' }); }
  addLawyer() { this.lawyers.push({ id: '', name: '' }); }
  addLaw() { this.laws.push({ id: '', name: '' }); }
  addLawArticle() { this.lawArticles.push({ id: '', description: '' }); }

  // Dodajemo konstruktor sa HttpClient-om
  constructor(private http: HttpClient) {}

  submitFacts() {

  const payload = {
    defendant: String(this.accused.name),
    usesGrossViolence: String(this.usesGrossViolence ?? 'false'),
    violatesIntegrity: String(this.violatesIntegrity === 'family_member_yes' ? 'family_member_yes' : 'family_member_no'),
    usesWeapon: String(this.usesWeapon ?? 'false'),
    causesSeriousInjury: String(this.causesSeriousInjury ?? 'false'),
    causesDeath: String(this.causesDeath ?? 'false'),
    violatesProtectionMeasures: String(this.violatesProtectionMeasures ?? 'false'),
    failsToPaySupport: String(this.failsToPaySupport ?? 'false'),
    severeConsequencesForVictim: String(this.causesSeriousConsequences ?? 'false'),
    legalObligationToSupport: String(this.legalObligationToSupport ?? 'false'),
    dutyEstablishedByCourtOrder: String(this.dutyEstablishedByCourtOrder ?? 'false'),
    justifiedReasonsForNonpayment: String(this.justifiedReasonsForNonpayment ?? 'false'),
    victimIsMinor: String(this.victimIsMinor ?? 'false'),

    court: String(this.court),
    judge: String(this.judge.name),
    clerk: String(this.clerk.name),
    accused: String(this.accused.name),
    prosecutor: String(this.prosecutor.name),
    victims: this.victims,
    lawyers: this.lawyers,
    facts_text: String(this.facts),
    legal_text: String(this.legal),
    context_text: String(this.context),
    generation_date: String(this.generationDate),
    court_name: String(this.courtName),
    clerk_name: String(this.clerkName),
    judge_name: String(this.judgeName)
  };

  console.log('Submitting facts with payload:', payload); // logujemo payload pre slanja

  this.http.post('http://localhost:8000/generate-rdf', payload, { responseType: 'blob' }).subscribe({
    next: (response: Blob) => {
      console.log(payload); // logujemo payload da proverimo šta se šalje
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