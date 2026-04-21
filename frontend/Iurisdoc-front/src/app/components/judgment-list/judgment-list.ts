import { CommonModule } from '@angular/common';
import { Component, OnInit, ChangeDetectorRef } from '@angular/core';
import { GenerateJudgement } from '../generate-judgement/generate-judgement';
import { FormsModule } from '@angular/forms';
import { MatCardModule } from '@angular/material/card';
import { MatChipsModule } from '@angular/material/chips';
import { MatNativeDateModule } from '@angular/material/core';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { MatDividerModule } from '@angular/material/divider';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatPaginatorModule, PageEvent } from '@angular/material/paginator';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatSelectModule } from '@angular/material/select';
import { RouterLink } from '@angular/router';
import { MatAnchor } from '@angular/material/button';
import { HttpClient } from '@angular/common/http';
import { ScrollingModule } from '@angular/cdk/scrolling';

import { JudgmentListItem } from '../../models/judgment.model';
import { JudgmentService } from '../../services/judgment-service';

@Component({
  selector: 'app-judgment-list',
  standalone: true,
  imports: [
    CommonModule,
    RouterLink,
    FormsModule,
    MatCardModule,
    MatIconModule,
    MatChipsModule,
    MatDividerModule,
    MatProgressSpinnerModule,
    MatInputModule,
    MatFormFieldModule,
    MatSelectModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatPaginatorModule,
    MatAnchor,
    ScrollingModule,
    GenerateJudgement
  ],
  templateUrl: './judgment-list.html',
  styleUrl: './judgment-list.css',
})
export class JudgmentList implements OnInit {
  judgments: JudgmentListItem[] = [];
  totalJudgments = 0;
  loading = true;
  error: string | null = null;

  pageSize = 10;
  pageSizeOptions = [5, 10, 25, 50];
  pageIndex = 0;

  searchTerm = '';
  selectedCourt = '';
  selectedYear = '';
  selectedLegalQualification = '';

  courts: string[] = [];
  years: string[] = [];
  legalQualifications: string[] = [];

  constructor(
    private judgmentService: JudgmentService,
    private cdRef: ChangeDetectorRef,
    private http: HttpClient
  ) {}

  ngOnInit(): void {
    this.loadFilterOptions();
    this.loadJudgments();
  }

  // Dodaj trackBy metodu
  trackByJudgmentId(index: number, judgment: JudgmentListItem): string {
    return judgment.case_id; // ili judgment.id ako postoji
  }

  // Popravljena metoda za osvežavanje nakon kreiranja
  onJudgmentCreated(): void {
    // Resetuj paginaciju na prvu stranu
    this.pageIndex = 0;
    // Učitaj sveže podatke
    this.loadJudgments();
    // Opciono: osveži i filtere (ako su se promenili)
    this.loadFilterOptions();
  }

  loadFilterOptions(): void {
    const apiUrl = (this.judgmentService as any)["apiUrl"];
    this.http.get<any>(apiUrl + "/judgments/filters").subscribe({
      next: (filters) => {
        this.courts = filters.courts || [];
        this.years = filters.years || [];
        this.legalQualifications = filters.legal_qualifications || [];
        this.cdRef.detectChanges();
      },
      error: (err) => {
        console.error('Greška pri učitavanju filtera:', err);
        this.courts = [];
        this.years = [];
        this.legalQualifications = [];
      }
    });
  }

  loadJudgments(): void {
    this.loading = true;
    this.error = null;

    const params: any = {
      page: this.pageIndex + 1,
      page_size: this.pageSize,
    };
    
    // Dodaj filtere samo ako imaju vrednost
    if (this.selectedCourt) params.court = this.selectedCourt;
    if (this.selectedYear) params.year = this.selectedYear;
    if (this.selectedLegalQualification) params.legal_qualification = this.selectedLegalQualification;
    
    // Dodaj search parametar ako postoji
    if (this.searchTerm) params.search = this.searchTerm;

    this.judgmentService.getJudgments(params).subscribe({
      next: (response) => {
        console.log('📋 [JudgmentList] Učitane presude:', response);
        
        // Osiguraj da response ima očekivanu strukturu
        this.judgments = response.judgments || [];
        this.totalJudgments = response.total || 0;
        
        this.loading = false;
        this.cdRef.detectChanges();
      },
      error: (err) => {
        console.error('❌ Greška pri učitavanju presuda:', err);
        this.error = 'Greška pri učitavanju presuda. Pokušajte ponovo.';
        this.loading = false;
        this.cdRef.detectChanges();
      }
    });
  }

  applyFilters(): void {
    this.pageIndex = 0;
    this.loadJudgments();
  }

  clearFilters(): void {
    this.searchTerm = '';
    this.selectedCourt = '';
    this.selectedYear = '';
    this.selectedLegalQualification = '';
    this.applyFilters();
  }

  onPageChange(event: PageEvent): void {
    this.pageSize = event.pageSize;
    this.pageIndex = event.pageIndex;
    this.loadJudgments();
  }

  get paginatedJudgments(): JudgmentListItem[] {
    return this.judgments;
  }

  formatDate(dateStr: string): string {
    if (!dateStr) return '';
    try {
      return new Date(dateStr).toLocaleDateString('sr-RS');
    } catch {
      return dateStr;
    }
  }

  getSeverityColor(severity?: string): string {
    switch (severity?.toLowerCase()) {
      case 'teška': return '#c62828';
      case 'laka': return '#2e7d32';
      default: return '#1976d2';
    }
  }
}