import { Injectable } from '@angular/core';
import { environment } from '../environment/env';
import { HttpClient } from '@angular/common/http';
import { Judgment, JudgmentListResponse } from '../models/judgment.model';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class JudgmentService {

  private apiUrl = environment.apiUrl;

  constructor(private http: HttpClient) {}


  getJudgments(params: {
    page?: number,
    page_size?: number,
    court?: string,
    year?: string,
    legal_qualification?: string
  }): Observable<JudgmentListResponse> {
    return this.http.get<JudgmentListResponse>(`${this.apiUrl}/judgments`, { params });
  }

  getJudgment(caseId: string): Observable<Judgment> {
    caseId = caseId.replace(/-/g, '_');
    return this.http.get<Judgment>(`${this.apiUrl}/judgment/${caseId}`);
  }
}
