import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { HttpClient, HttpClientModule } from '@angular/common/http'; // dodato HttpClientModule
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule } from '@angular/material/select';
import { MatOptionModule } from '@angular/material/core';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatIcon, MatIconModule } from "@angular/material/icon";

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
    HttpClientModule, // <-- dodat
    MatFormFieldModule,
    MatInputModule,
    MatSelectModule,
    MatOptionModule,
    MatCheckboxModule,
    MatDatepickerModule,
    MatIconModule
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
  usesGrossViolence: 'true' | 'false' | null = null;
  violatesIntegrity: 'family_member_yes' | 'family_member_no' | 'other' | null = null;
  usesWeapon: 'true' | 'false' | null = null;
  causesSeriousInjury: 'true' | 'false' | null = null;
  causesDeath: 'true' | 'false' | null = null;
  violatesProtectionMeasures: 'true' | 'false' | null = null;
  failsToPaySupport: 'true' | 'false' | null = null;
  causesSeriousConsequences: 'true' | 'false' | null = null;
  // Nova polja
  previousConviction: 'true' | 'false' | null = null;
  repetition: 'true' | 'false' | null = null;

  // additional structured flags needed by rulebase
  legalObligationToSupport: 'true' | 'false' | null = null;
  dutyEstablishedByCourtOrder: 'true' | 'false' | null = null;
  justifiedReasonsForNonpayment: 'true' | 'false' | null = null;
  severeConsequencesForVictim: 'true' | 'false' | null = null;
  victimIsMinor: 'true' | 'false' | null = null;

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
    severeConsequencesForVictim: String(this.severeConsequencesForVictim ?? 'false'),
    legalObligationToSupport: String(this.legalObligationToSupport ?? 'false'),
    dutyEstablishedByCourtOrder: String(this.dutyEstablishedByCourtOrder ?? 'false'),
    justifiedReasonsForNonpayment: String(this.justifiedReasonsForNonpayment ?? 'false'),
    victimIsMinor: String(this.victimIsMinor ?? 'false'),
    previousConviction: String(this.previousConviction ?? 'false'),
    repetition: String(this.repetition ?? 'false'),

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
    numberOfVictims: this.victims.length,
    // court_name: String(this.courtName),
    // clerk_name: String(this.clerkName),
    // judge_name: String(this.judgeName)
  };

  console.log('Submitting facts with payload:', payload); // logujemo payload pre slanja

  this.http.post<{status: string, message: string}>(
    'http://localhost:8000/generate-rdf',
    payload
  ).subscribe({
    next: (response) => {
      console.log('Backend response:', response);
      alert((response.status === 'success' ? '✅ ' : '❌ ') + response.message);
    },
    error: (err) => {
      console.error('Error:', err);
      alert('Greška pri generisanju činjenica!');
    }
  });
}
}