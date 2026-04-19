import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatSelectModule } from '@angular/material/select';
import { MatOptionModule } from '@angular/material/core';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatIconModule } from "@angular/material/icon";
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatRadioModule } from '@angular/material/radio';
import { MatChipsModule } from '@angular/material/chips';

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
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    HttpClientModule,
    MatFormFieldModule,
    MatInputModule,
    MatSelectModule,
    MatOptionModule,
    MatCheckboxModule,
    MatDatepickerModule,
    MatIconModule,
    MatProgressSpinnerModule,
    MatRadioModule,
    MatChipsModule
  ],
  templateUrl: './generate-judgement.html',
  styleUrls: ['./generate-judgement.css']
})
export class GenerateJudgement {
  // Polja za izbor kazne (Sudija popunjava nakon analize)
  acquittal: boolean | null = null;
  penaltyType: 'zatvorska' | 'novcana' | '' = '';
  penaltyValue: number | null = null;
  penaltyUnit: string = '';
  minPenalty: number | null = null;
  maxPenalty: number | null = null;

  // Indikator da li postoji kazna u mesecima
  hasMonthsOption = false;

  // Mapa DR-Device rezultata na član
  drDeviceToClan: { [key: string]: string } = {
    'is_guilty_of_family_violence_lv1': 'čl. 220 st. 1 KZ',
    'is_guilty_of_family_violence_lv2': 'čl. 220 st. 2 KZ',
    'is_guilty_of_family_violence_lv3': 'čl. 220 st. 3 KZ',
    'is_guilty_of_family_violence_lv4': 'čl. 220 st. 4 KZ',
    'is_guilty_of_violating_measures': 'čl. 220 st. 5 KZ',
    'is_guilty_of_nonpayment_of_support_lv1': 'čl. 221 st. 1 KZ',
    'is_guilty_of_nonpayment_of_support_lv2': 'čl. 221 st. 3 KZ',
  };

  loading = false;
  showResults = false;

  // Podaci o sudu i akterima
  court = '';
  generationDate = '';
  judge: Person = { id: '', name: '' };
  clerk: Person = { id: '', name: '' };
  accused: Person = { id: '', name: '' };
  prosecutor: Person = { id: '', name: '' };
  victims: Person[] = [];
  lawyers: Person[] = [];

  // Slobodan tekst
  facts = '';
  legal = '';
  context = '';

  // Strukturirane činjenice (Input za DR-Device)
  usesGrossViolence: boolean = false;
  violatesIntegrity: 'family_member_yes' | 'family_member_no' | 'other' | null = null;
  usesWeapon: boolean = false;
  causesSeriousInjury: boolean = false;
  causesDeath: boolean = false;
  violatesProtectionMeasures: boolean = false;
  failsToPaySupport: boolean = false;
  severeConsequencesForVictim: boolean = false;
  previousConviction: boolean = false;
  repetition: boolean = false;
  legalObligationToSupport: boolean = false;
  dutyEstablishedByCourtOrder: boolean = false;
  justifiedReasonsForNonpayment: boolean = false;
  victimIsMinor: boolean = false;

  // Rezultati sa bekenda
  drDeviceResults: string[] = [];
  penalties: any[] = [];
  similarCases: any[] = [];

  hasImprisonmentOption = false;
  hasMoneyOption = false;

  constructor(private http: HttpClient) {}

  addVictim() { this.victims.push({ id: '', name: '' }); }
  addLawyer() { this.lawyers.push({ id: '', name: '' }); }

  submitFacts() {
    this.loading = true;
    const payload = {
      defendant: String(this.accused.name),
      usesGrossViolence: String(this.usesGrossViolence),
      violatesIntegrity: String(this.violatesIntegrity === 'family_member_yes' ? 'family_member_yes' : 'family_member_no'),
      usesWeapon: String(this.usesWeapon),
      causesSeriousInjury: String(this.causesSeriousInjury),
      causesDeath: String(this.causesDeath),
      violatesProtectionMeasures: String(this.violatesProtectionMeasures),
      failsToPaySupport: String(this.failsToPaySupport),
      severeConsequencesForVictim: String(this.severeConsequencesForVictim),
      legalObligationToSupport: String(this.legalObligationToSupport),
      dutyEstablishedByCourtOrder: String(this.dutyEstablishedByCourtOrder),
      justifiedReasonsForNonpayment: String(this.justifiedReasonsForNonpayment),
      victimIsMinor: String(this.victimIsMinor),
      previousConviction: String(this.previousConviction),
      repetition: String(this.repetition),
      court: String(this.court),
      judge: String(this.judge.name),
      clerk: String(this.clerk.name),
      accused: String(this.accused.name),
      prosecutor: String(this.prosecutor.name),
      victims: this.victims,
      lawyers: this.lawyers,
      facts_text: String(this.facts),
      numberOfVictims: this.victims.length
    };

    this.http.post<any>('http://localhost:8000/generate-rdf', payload).subscribe({
      next: (response) => {
        this.loading = false;
        if (response.status === 'success') {
          this.drDeviceResults = response.dr_device_results || [];
          this.penalties = response.penalties || [];
          this.similarCases = response.similar_cases || [];

          this.processPenalties();
          this.showResults = true;
          alert('✅ Obrada završena!');
        }
      },
      error: (err) => {
        this.loading = false;
        console.error('Error:', err);
        alert('Greška pri povezivanju sa serverom!');
      }
    });
  }

  selectFinalCase(caseObj: any) {
    alert(`Odabrali ste presudu: ${caseObj.caseId}.`);
  }

  private processPenalties() {
    if (this.penalties && this.penalties.length > 0) {
      // Resetuj indikatore
      const moneyPenalties = this.penalties.filter(p => p.type === 'to_pay').map(p => Number(p.value));

      // Grupisi po jedinici
      const minImprisonmentMonths = this.penalties.filter(p => p.type === 'min_imprisonment' && p.unit === 'Months').map(p => Number(p.value));
      const maxImprisonmentMonths = this.penalties.filter(p => p.type === 'max_imprisonment' && p.unit === 'Months').map(p => Number(p.value));
      const minImprisonmentYears = this.penalties.filter(p => p.type === 'min_imprisonment' && p.unit === 'Years').map(p => Number(p.value));
      const maxImprisonmentYears = this.penalties.filter(p => p.type === 'max_imprisonment' && p.unit === 'Years').map(p => Number(p.value));

      this.hasImprisonmentOption = (minImprisonmentMonths.length > 0 || maxImprisonmentMonths.length > 0 || minImprisonmentYears.length > 0 || maxImprisonmentYears.length > 0);
      this.hasMoneyOption = moneyPenalties.length > 0;
      this.hasMonthsOption = (minImprisonmentMonths.length > 0 || maxImprisonmentMonths.length > 0);

      if (this.hasImprisonmentOption) {
        this.penaltyType = 'zatvorska';
        // Prioritet: Years, pa Months
        if (minImprisonmentYears.length > 0 || maxImprisonmentYears.length > 0) {
          this.penaltyUnit = 'Years';
          this.minPenalty = minImprisonmentYears.length > 0 ? Math.min(...minImprisonmentYears) : 1;
          this.maxPenalty = maxImprisonmentYears.length > 0 ? Math.max(...maxImprisonmentYears) : 12;
        } else if (minImprisonmentMonths.length > 0 || maxImprisonmentMonths.length > 0) {
          this.penaltyUnit = 'Months';
          this.minPenalty = minImprisonmentMonths.length > 0 ? Math.min(...minImprisonmentMonths) : 1;
          this.maxPenalty = maxImprisonmentMonths.length > 0 ? Math.max(...maxImprisonmentMonths) : 12;
        } else {
          this.penaltyUnit = 'Years';
          this.minPenalty = 1;
          this.maxPenalty = 12;
        }
      } else if (this.hasMoneyOption) {
        this.penaltyType = 'novcana';
        this.minPenalty = 100;
        this.maxPenalty = Math.max(...moneyPenalties);
        this.penaltyUnit = 'EUR';
      }

      this.penaltyValue = this.minPenalty;
      this.acquittal = false;
    }
  }

  finalizeJudgment() {
    if (this.acquittal === null) {
      alert('Molimo vas da odaberete da li je optuženi oslobođen ili osuđen.');
      return;
    }

    const finalPayload = {

      metadata: {
        court: this.court,
        generationDate: this.generationDate,
        judge: this.judge.name,
        clerk: this.clerk.name,
        accused: this.accused.name,
        prosecutor: this.prosecutor.name,
        victims: this.victims,
        lawyers: this.lawyers,
      },

      facts: {
        usesGrossViolence: this.usesGrossViolence,
        violatesIntegrity: this.violatesIntegrity,
        usesWeapon: this.usesWeapon,
        causesSeriousInjury: this.causesSeriousInjury,
        causesDeath: this.causesDeath,
        violatesProtectionMeasures: this.violatesProtectionMeasures,
        failsToPaySupport: this.failsToPaySupport,
        severeConsequencesForVictim: this.severeConsequencesForVictim,
        previousConviction: this.previousConviction,
        repetition: this.repetition,
        legalObligationToSupport: this.legalObligationToSupport,
        dutyEstablishedByCourtOrder: this.dutyEstablishedByCourtOrder,
        justifiedReasonsForNonpayment: this.justifiedReasonsForNonpayment,
        victimIsMinor: this.victimIsMinor,
      },
      analysis: {
        logicResults: this.drDeviceResults,
        appliedArticles: this.drDeviceResults.map(result => this.drDeviceToClan[result] || 'Nepoznat član'),
        similarCasesFound: this.similarCases
      },
      decision: {
        isAcquittal: this.acquittal,
        penalty: this.acquittal ? null : {
          type: this.penaltyType,
          value: this.penaltyValue,
          unit: this.penaltyUnit
      }
      }
    };

    console.log('Final Judgment Payload:', finalPayload);

    this.loading = true;
    this.http.post<any>('http://localhost:8000/save-judgment', finalPayload).subscribe({
      next: (response) => {
        this.loading = false;
        alert('Presuda je uspešno sačuvana!');
      },
      error: (err) => {
        this.loading = false;
        console.error('Error saving judgment:', err);
        alert('Došlo je do greške prilikom čuvanja presude!');
      }
    });
  }
}