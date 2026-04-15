import { Routes } from '@angular/router';
import { LawDisplay} from './components/law-display/law-display';
import { JudgmentList } from './components/judgment-list/judgment-list';
import { JudgmentDetail } from './components/judgment-detail/judgment-detail';
import { GenerateJudgement } from './components/generate-judgement/generate-judgement';
export const routes: Routes = [
    {path: '', redirectTo: '/home', pathMatch: 'full'},
    {path: 'home', loadComponent: () => import('./components/home/home').then(m => m.Home)},
    { path: 'laws', component: LawDisplay },
    { path: 'judgments', component: JudgmentList },
    { path: 'judgment/:caseId', component: JudgmentDetail},
    { path: 'generate-judgment', component: GenerateJudgement }, 
];
