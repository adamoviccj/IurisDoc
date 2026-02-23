import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatChipsModule } from '@angular/material/chips';
import { MatDividerModule } from '@angular/material/divider';
import { MatExpansionModule } from '@angular/material/expansion';
import { MatIconModule } from '@angular/material/icon';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatTabsModule } from '@angular/material/tabs';
import { MatTooltipModule } from '@angular/material/tooltip';
import { ActivatedRoute, RouterLink } from '@angular/router';
import { Judgment } from '../../models/judgment.model';
import { JudgmentService } from '../../services/judgment-service';
import { Paragraph } from '../../models/law.model';
import { MatDialog, MatDialogModule } from '@angular/material/dialog';
import { LawReferenceDialog } from '../law-reference-dialog/law-reference-dialog';

@Component({
  selector: 'app-judgment-detail',
  standalone: true,
  imports: [
    CommonModule,
    RouterLink,
    FormsModule,
    MatCardModule,
    MatButtonModule,
    MatIconModule,
    MatChipsModule,
    MatDividerModule,
    MatProgressSpinnerModule,
    MatTabsModule,
    MatExpansionModule,
    MatTooltipModule,
    MatDialogModule,
    LawReferenceDialog
  ],
  templateUrl: './judgment-detail.html',
  styleUrl: './judgment-detail.css',
})
export class JudgmentDetail implements OnInit {
  judgment: Judgment | null = null;
  loading = true;
  error: string | null = null;

  activeTab = 0;

  constructor(
    private route: ActivatedRoute,
    private judgmentService: JudgmentService,
    private dialog: MatDialog
  ) {}


  ngOnInit(): void {
    this.route.params.subscribe(params => {
      if (params['caseId']) {
        this.loadJudgment(params['caseId']);
      }
    });
  }

  loadJudgment(caseId: string): void {
    this.loading = true;
    this.error = null;

    this.judgmentService.getJudgment(caseId).subscribe({
      next: (judgment) => {
        this.judgment = judgment;
        this.loading = false;
      },
      error: (err) => {
        this.error = 'Došlo je do greške prilikom učitavanja presude.';
        this.loading = false;
      }
    });
  }

  formatDate(dateStr: string): string {
    return new Date(dateStr).toLocaleDateString('sr-RS', {
      year: '2-digit',
      month: '2-digit',
      day: 'numeric'
    });
  }

  splitParagraphWithReferences(paragraph: Paragraph): any[] {
    if (!paragraph.references || paragraph.references.length === 0) {
      return [{ text: paragraph.text, isRef: false }];
    }

    const parts: any[] = [];
    let remainingText = paragraph.text;
    let lastIndex = 0;

    for (const ref of paragraph.references) {
      const refText = ref.text;
      const refIndex = remainingText.indexOf(refText, lastIndex);

      if (refIndex !== -1) {
        if (refIndex > lastIndex) {
          parts.push({
            text: remainingText.substring(lastIndex, refIndex),
            isRef: false
          });
        }

        parts.push({
          text: refText,
          isRef: true,
          ref: ref
          });

        lastIndex = refIndex + refText.length;
      }
    }

    if (lastIndex < remainingText.length) {
      parts.push({
        text: remainingText.substring(lastIndex),
        isRef: false
      });
    }

    return parts;
  }

  getSeverityColor(severity: string): string {
    switch (severity?.toLowerCase()) {
      case 'teška':
        return '#c62828'; // Red
      case 'laka':
        return '#2e7d32';
      default:
        return 'primary';
    }
  }

  printJudgment(): void {
    window.print();
  }

  openReference(ref: any): void {

    const lawName = this.detectLawFromTarget(ref.target);

    this.dialog.open(LawReferenceDialog, {
      width: '900px',
      data: {
        lawName: lawName,
        target: ref.target
      }
    });
  }

  detectLawFromTarget(target: string): string {
    return 'law';
  }
}
