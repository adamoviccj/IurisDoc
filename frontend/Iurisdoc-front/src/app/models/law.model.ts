export interface Reference {
    text: string;
    target: string;
}

export interface ParagraphPart {
    text: string;
    ref: Reference | null;
}

export interface Paragraph {
    id: string,
    text: string;
    references?: Reference[];

    parts?: ParagraphPart[];
}

export interface Article {
    id: string;
    num: string;
    content: Paragraph[];
}

export interface Chapter {
    id: string;
    num: string;
    title: string;
    articles: Article[];
}

export interface LawResponse {
    title: string;
    source: string;
    date: string;
    chapters: Chapter[];
}