import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
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

import { JudgmentListItem } from '../../models/judgment.model';
import { JudgmentService } from '../../services/judgment-service';
import { ScrollingModule } from '@angular/cdk/scrolling';

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
    ScrollingModule
  ],
  templateUrl: './judgment-list.html',
  styleUrl: './judgment-list.css',
})
export class JudgmentList implements OnInit {

  judgments: JudgmentListItem[] = [];
  filteredJudgments: JudgmentListItem[] = [];

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

  constructor(private judgmentService: JudgmentService) {}

  ngOnInit(): void {
    this.loadJudgments();
  }

  loadJudgments(): void {
    this.loading = true;
    this.error = null;

    this.judgmentService.getAllJudgments().subscribe({
      next: (response) => {
        this.judgments = response.judgments ?? [];
        this.extractFilterOptions();
        this.applyFilters();
        this.loading = false;
      },
      error: (err) => {
        console.error(err);
        this.error = 'Greška pri učitavanju presuda.';
        this.loading = false;
      }
    });
  }

  // ---------- FILTER OPCIJE ----------

  extractFilterOptions(): void {

    this.courts = [...new Set(
      this.judgments.map(j => j.court).filter(Boolean)
    )].sort();

    this.years = [...new Set(
      this.judgments
        .map(j => j.decision_date)
        .filter(Boolean)
        .map(d => new Date(d).getFullYear().toString())
    )].sort().reverse();

    this.legalQualifications = [...new Set(
      this.judgments.map(j => j.legal_qualification).filter(Boolean)
    )].sort();
  }

  // ---------- FILTERI ----------

  applyFilters(): void {

    let filtered = [...this.judgments];

    if (this.searchTerm.trim()) {
      const term = this.searchTerm.toLowerCase();

      filtered = filtered.filter(j =>
        j.case_id?.toLowerCase().includes(term) ||
        j.accused?.toLowerCase().includes(term) ||
        j.victim?.toLowerCase().includes(term) ||
        j.legal_qualification?.toLowerCase().includes(term)
      );
    }

    if (this.selectedCourt) {
      filtered = filtered.filter(j => j.court === this.selectedCourt);
    }

    if (this.selectedYear) {
      filtered = filtered.filter(j =>
        new Date(j.decision_date).getFullYear().toString() === this.selectedYear
      );
    }

    if (this.selectedLegalQualification) {
      filtered = filtered.filter(j =>
        j.legal_qualification === this.selectedLegalQualification
      );
    }

    this.filteredJudgments = filtered;
    this.pageIndex = 0;
  }

  clearFilters(): void {
    this.searchTerm = '';
    this.selectedCourt = '';
    this.selectedYear = '';
    this.selectedLegalQualification = '';
    this.applyFilters();
  }

  // ---------- PAGINACIJA ----------

  onPageChange(event: PageEvent): void {
    this.pageSize = event.pageSize;
    this.pageIndex = event.pageIndex;
  }

  get paginatedJudgments(): JudgmentListItem[] {
    const start = this.pageIndex * this.pageSize;
    return this.filteredJudgments.slice(start, start + this.pageSize);
  }

  // ---------- UTIL ----------

  formatDate(dateStr: string): string {
    return new Date(dateStr).toLocaleDateString('sr-RS');
  }

  getSeverityColor(severity?: string): string {
    switch (severity?.toLowerCase()) {
      case 'teška': return '#c62828';
      case 'laka': return '#2e7d32';
      default: return 'primary';
    }
  }
}