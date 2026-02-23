import { Injectable } from '@angular/core';
import { environment } from '../environment/env';
import { Article, Chapter, LawResponse } from '../models/law.model';
import { Observable } from 'rxjs/internal/Observable';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, catchError, shareReplay, tap, finalize, timeout } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class LawService {
  private apiUrl = environment.apiUrl;

  // Cache for loaded laws
  private lawCache = new Map<string, Observable<LawResponse>>();
  
  // Track current law and position
  private currentLawSubject = new BehaviorSubject<LawResponse | null>(null);
  currentLaw$ = this.currentLawSubject.asObservable();
  
  private currentChapterSubject = new BehaviorSubject<Chapter | null>(null);
  currentChapter$ = this.currentChapterSubject.asObservable();
  
  private currentArticleSubject = new BehaviorSubject<Article | null>(null);
  currentArticle$ = this.currentArticleSubject.asObservable();

  constructor(private http: HttpClient) {
    console.log('LawService initialized with API URL:', this.apiUrl);
  }

  getLaw(fileName: string): Observable<LawResponse> {
    console.log(`Getting law: ${fileName}`);
    
    // Check cache first
    if (!this.lawCache.has(fileName)) {
      console.log(`Cache miss for ${fileName}, fetching from API...`);
      
      const url = `${this.apiUrl}/law/${fileName}`;
      console.log('Fetching from URL:', url);
      
      const request = this.http.get<LawResponse>(url).pipe(
        timeout(10000), // 10 second timeout
        tap({
          next: (law) => {
            console.log(`Successfully loaded law:`, law);
            console.log(`Law title: ${law?.title}`);
            console.log(`Number of chapters: ${law?.chapters?.length}`);
          },
          error: (error) => {
            console.error('Error in HTTP request:', error);
          }
        }),
        shareReplay(1), // Cache the response
        catchError((error) => {
          console.error('Error loading law:', error);
          this.lawCache.delete(fileName);
          
          // Log more details about the error
          if (error.name === 'TimeoutError') {
            console.error('Request timed out after 10 seconds');
          } else if (error.status) {
            console.error(`HTTP Status: ${error.status} - ${error.statusText}`);
          }
          
          throw error;
        })
      );
      
      this.lawCache.set(fileName, request);
    } else {
      console.log(`Cache hit for ${fileName}`);
    }
    
    return this.lawCache.get(fileName)!;
  }

  setCurrentLaw(law: LawResponse | null) {
    console.log('Setting current law:', law?.title);
    this.currentLawSubject.next(law);
  }

  setCurrentChapter(chapter: Chapter | null) {
    console.log('Setting current chapter:', chapter?.title);
    this.currentChapterSubject.next(chapter);
    // Reset article when chapter changes
    this.setCurrentArticle(null);
  }

  setCurrentArticle(article: Article | null) {
    console.log('Setting current article:', article?.num);
    this.currentArticleSubject.next(article);
  }

  // Search within law
  searchInLaw(law: LawResponse, searchTerm: string): any[] {
    if (!searchTerm.trim()) return [];
    
    const results: any[] = [];
    const term = searchTerm.toLowerCase();

    law.chapters.forEach(chapter => {
      chapter.articles.forEach(article => {
        article.content.forEach(paragraph => {
          if (paragraph.text.toLowerCase().includes(term)) {
            results.push({
              chapter,
              article,
              paragraph,
              context: this.getContext(paragraph.text, term, 50)
            });
          }
          
          // Search in references
          paragraph.references?.forEach(ref => {
            if (ref.text.toLowerCase().includes(term)) {
              results.push({
                chapter,
                article,
                reference: ref,
                context: this.getContext(ref.text, term, 30)
              });
            }
          });
        });
      });
    });

    return results;
  }

  getContext(text: string, term: string, contextLength: number): string {
    const index = text.toLowerCase().indexOf(term.toLowerCase());
    const start = Math.max(0, index - contextLength);
    const end = Math.min(text.length, index + term.length + contextLength);
    let context = text.substring(start, end);
    
    if (start > 0) context = '...' + context;
    if (end < text.length) context = context + '...';
    
    return context;
  }

  // Navigation helpers
  getNextArticle(currentChapter: Chapter, currentArticle: Article): Article | null {
    const articleIndex = currentChapter.articles.findIndex(a => a.id === currentArticle.id);
    if (articleIndex < currentChapter.articles.length - 1) {
      return currentChapter.articles[articleIndex + 1];
    }
    return null;
  }

  getPreviousArticle(currentChapter: Chapter, currentArticle: Article): Article | null {
    const articleIndex = currentChapter.articles.findIndex(a => a.id === currentArticle.id);
    if (articleIndex > 0) {
      return currentChapter.articles[articleIndex - 1];
    }
    return null;
  }
}