import { Component, OnInit, OnDestroy } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Subscription } from 'rxjs';

import { NestedTreeControl } from '@angular/cdk/tree';
import { MatTreeModule, MatTreeNestedDataSource } from '@angular/material/tree';

import { LawResponse, Chapter, Article, Reference } from '../../models/law.model';
import { LawService } from '../../services/law-service';
import { MatProgressSpinnerModule } from '@angular/material/progress-spinner';
import { MatIconModule } from '@angular/material/icon';
import { MatFormField, MatFormFieldModule } from '@angular/material/form-field';
import { MatChipsModule } from '@angular/material/chips';
import { MatMenuModule } from '@angular/material/menu';
import { MatDivider, MatDividerModule } from '@angular/material/divider';
import { MatSelectModule } from '@angular/material/select';

interface LawNode {
  name: string;
  id?: string;
  type: 'chapter' | 'article';
  children?: LawNode[];
  data?: any;
}

@Component({
  selector: 'app-law-display',
  standalone: true,
  imports: [
    CommonModule, 
    MatTreeModule,
    MatProgressSpinnerModule,
    MatIconModule,
    MatFormFieldModule,
    MatChipsModule,
    MatMenuModule,
    MatDividerModule,
    MatSelectModule
  ],
  templateUrl: './law-display.html',
  styleUrls: ['./law-display.css']
})
export class LawDisplay implements OnInit, OnDestroy {

  private readonly LAW_ID = 'law';

  law: LawResponse | null = null;
  loading = true;

  error: string | null = null;
  connectionError = false;

  selectedChapter: Chapter | null = null;
  selectedArticle: Article | null = null;

  treeControl = new NestedTreeControl<LawNode>(n => n.children);
  dataSource = new MatTreeNestedDataSource<LawNode>();

  private subs: Subscription[] = [];

  constructor(public lawService: LawService) {}

  ngOnInit(): void {
    this.loadLaw();

    this.subs.push(
      this.lawService.currentArticle$.subscribe(a => {
        this.selectedArticle = a;
      })
    );
  }

  ngOnDestroy(): void {
    this.subs.forEach(s => s.unsubscribe());
  }

  // =========================
  // LOAD LAW
  // =========================

  loadLaw(): void {
  this.lawService.getLaw(this.LAW_ID).subscribe(law => {

    law.chapters.forEach(ch =>
      ch.articles.forEach(a =>
        a.content.forEach(p =>
          (p as any).parts = this.splitParagraphWithReferences(p)
        )
      )
    );

    this.law = law;
    this.lawService.setCurrentLaw(law);
    this.buildTree(law);

    // ⭐ PRIKAŽI SAMO PRVO POGLAVLJE / ČLAN
    this.selectedChapter = law.chapters[0] ?? null;
    this.selectedArticle = law.chapters[0]?.articles[0] ?? null;

    // dozvoli browseru da renderuje
    setTimeout(() => this.loading = false);
  });
}

  // =========================
  // TREE
  // =========================

  buildTree(law: LawResponse) {
    this.dataSource.data = law.chapters.map(ch => ({
      name: `Poglavlje ${ch.num}`,
      id: ch.id,
      type: 'chapter',
      data: ch,
      children: ch.articles.map(a => ({
        name: `Član ${a.num}`,
        id: a.id,
        type: 'article',
        data: a
      }))
    }));
  }

  hasChild = (_: number, n: LawNode) => !!n.children;

  selectNode(node: LawNode) {

    if (node.type === 'chapter') {
      this.selectedChapter = node.data;
      this.selectedArticle = null;
      this.lawService.setCurrentChapter(node.data);
      this.lawService.setCurrentArticle(null);
      return;
    }

    if (node.type === 'article') {
      this.selectedArticle = node.data;
      this.selectedChapter = this.law?.chapters.find(ch =>
        ch.articles.some(a => a.id === node.id)
      ) || null;

      this.lawService.setCurrentChapter(this.selectedChapter);
      this.lawService.setCurrentArticle(node.data);

      this.scrollTo(node.id!);
    }
  }

  // =========================
  // REFERENCE NAVIGATION
  // =========================

  navigateToReference(ref: Reference) {

  if (!this.law) return;

  const id = ref.target.replace('#', '').trim();

  console.log('Navigating to:', id);

  // 1️⃣ pokušaj direktno u DOM-u
  let el = document.getElementById(id);

  if (el) {
    this.highlight(el);
    return;
  }

  // 2️⃣ možda je referenca na član
  for (const ch of this.law.chapters) {
    for (const art of ch.articles) {

      if (art.id === id) {

        this.selectedChapter = ch;
        this.selectedArticle = art;

        this.lawService.setCurrentChapter(ch);
        this.lawService.setCurrentArticle(art);

        setTimeout(() => {
          const el2 = document.getElementById(id);
          if (el2) this.highlight(el2);
        }, 100);

        return;
      }

      // 3️⃣ referenca na stav
      const para = art.content.find(p => p.id === id);

      if (para) {

        this.selectedChapter = ch;
        this.selectedArticle = art;

        this.lawService.setCurrentChapter(ch);
        this.lawService.setCurrentArticle(art);

        setTimeout(() => {
          const el3 = document.getElementById(id);
          if (el3) this.highlight(el3);
        }, 100);

        return;
      }
    }
  }

  console.warn('Reference target not found:', id);
}

  // =========================
  // HELPERS
  // =========================

  scrollTo(id: string) {
    const el = document.getElementById(id);
    if (el) this.highlight(el);
  }

  highlight(el: HTMLElement) {

  el.scrollIntoView({
    behavior: 'smooth',
    block: 'center'
  });

  el.classList.add('referenced-paragraph-highlight');

  // highlightuj i član kontekst
  const article = el.closest('.article-block');
  if (article) {
    article.classList.add('referenced-article-context');

    setTimeout(() =>
      article.classList.remove('referenced-article-context'),
      2500
    );
  }

  setTimeout(() =>
    el.classList.remove('referenced-paragraph-highlight'),
    2500
  );
}

  // =========================
  // TEXT WITH REFERENCES
  // =========================

  splitParagraphWithReferences(p: any) {
    console.log('Splitting paragraph:', p.text, 'with refs:', p.references);

    if (!p.references?.length)
      return [{ text: p.text, ref: null }];

    const parts: any[] = [];
    let text = p.text;

    for (const r of p.references) {
      const idx = text.indexOf(r.text);

      if (idx === -1) continue;

      if (idx > 0)
        parts.push({ text: text.slice(0, idx), ref: null });

      parts.push({ text: r.text, ref: r });

      text = text.slice(idx + r.text.length);
    }

    if (text) parts.push({ text, ref: null });

    return parts;
  }
}