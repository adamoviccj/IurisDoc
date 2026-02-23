import { CommonModule } from '@angular/common';
import { Component, OnInit, OnDestroy } from '@angular/core';
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
import { ChangeDetectorRef } from '@angular/core';

import { Subject, EMPTY } from 'rxjs';
import { switchMap, takeUntil, tap } from 'rxjs/operators';

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
export class JudgmentDetail implements OnInit, OnDestroy {

  judgment: Judgment | null = null;
  loading = true;
  error: string | null = null;
  activeTab = 0;

  private destroy$ = new Subject<void>();

  constructor(
    private route: ActivatedRoute,
    private judgmentService: JudgmentService,
    private dialog: MatDialog,
    private cdr: ChangeDetectorRef
  ) {}

  ngOnInit(): void {

    console.log('🚨 [JudgmentDetail] ngOnInit pokrenut');

    this.route.paramMap
      .pipe(
        takeUntil(this.destroy$),

        tap(params => {
          console.log('🚨 [Router] paramMap promenjen:', params);
        }),

        switchMap(params => {
          const caseId = params.get('caseId');

          console.log('🚨 [Router] caseId iz URL-a:', caseId);

          if (!caseId) {
            console.warn('🚨 [Router] caseId NE POSTOJI');
            return EMPTY;
          }

          console.log('🚨 [Service] Pozivam getJudgment sa ID:', caseId);

          this.loading = true;
          this.error = null;
          this.judgment = null;

          return this.judgmentService.getJudgment(caseId).pipe(
            tap(response => {
              console.log('🚨 [Service] Odgovor sa servera:', response);
            })
          );
        })
      )
      .subscribe({
        next: judgment => {
          console.log('🚨 [Subscribe] Dobijen judgment:', judgment);

          this.judgment = { ...judgment };
          this.loading = false;
          this.activeTab = 0;
          this.cdr.detectChanges();

          console.log('🚨 [State] UI ažuriran - detectChanges pozvan');
        },

        error: err => {
          console.error('🚨 [ERROR] Greška pri učitavanju:', err);

          this.error = 'Došlo je do greške prilikom učitavanja presude.';
          this.loading = false;
        },

        complete: () => {
          console.log('🚨 [Subscribe] Stream završen');
        }
      });
  }

  ngOnDestroy(): void {
    console.log('🚨 [JudgmentDetail] ngOnDestroy — komponenta se uništava');

    this.destroy$.next();
    this.destroy$.complete();
  }

  formatDate(dateStr: string): string {
    console.log('🚨 formatDate pozvan sa:', dateStr);

    return new Date(dateStr).toLocaleDateString('sr-RS', {
      year: '2-digit',
      month: '2-digit',
      day: 'numeric'
    });
  }

  splitParagraphWithReferences(paragraph: Paragraph): any[] {
    console.log('🚨 splitParagraphWithReferences:', paragraph?.id);

    if (!paragraph.references?.length) {
      return [{ text: paragraph.text, isRef: false }];
    }

    const parts: any[] = [];
    let lastIndex = 0;

    for (const ref of paragraph.references) {
      const index = paragraph.text.indexOf(ref.text, lastIndex);

      if (index !== -1) {
        if (index > lastIndex) {
          parts.push({
            text: paragraph.text.substring(lastIndex, index),
            isRef: false
          });
        }

        parts.push({
          text: ref.text,
          isRef: true,
          ref
        });

        lastIndex = index + ref.text.length;
      }
    }

    if (lastIndex < paragraph.text.length) {
      parts.push({
        text: paragraph.text.substring(lastIndex),
        isRef: false
      });
    }

    return parts;
  }

  getSeverityColor(severity: string): string {
    console.log('🚨 getSeverityColor:', severity);

    switch (severity?.toLowerCase()) {
      case 'teška': return 'warn';
      case 'laka': return 'primary';
      default: return '';
    }
  }

  printJudgment(): void {
    console.log('🚨 printJudgment klik');
    window.print();
  }

  openReference(ref: any): void {
    console.log('🚨 openReference:', ref);

    this.dialog.open(LawReferenceDialog, {
      width: '900px',
      data: {
        lawName: this.detectLawFromTarget(ref.target),
        target: ref.target
      }
    });
  }

  detectLawFromTarget(target: string): string {
    console.log('🚨 detectLawFromTarget:', target);
    return 'law';
  }

  trackParagraph(index: number, item: any): any {
    return item.id;
  }

}