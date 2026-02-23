import { Paragraph } from "./law.model";

export interface JudgmentMetadata {
    act_description: string;
    legal_qualification: string;
    victim?: string;
    time_period?: string;
    means_of_commission?: string;
    injury_severity?: string;
    penalty?: string;
    security_measure?: string;
    case_id: string;
    court: string;
    judge: string;
    clerk: string;
    accused: string;
    decision_date: string;
    witnesses: string[];
}

export interface Judgment {
    metadata: JudgmentMetadata;
    text: Paragraph[];
}

export interface JudgmentListResponse {
    judgments: JudgmentListItem[];
}

export interface JudgmentListItem {
  case_id: string
  court: string
  legal_qualification: string
  decision_date: string
  victim?: string
    accused: string
    penalty?: string
    injury_severity?: string,
    witnesses?: string[]
}