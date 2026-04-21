import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatCardModule } from '@angular/material/card';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatChipsModule } from '@angular/material/chips';
import { MatDividerModule } from '@angular/material/divider';
import { MatProgressBarModule } from '@angular/material/progress-bar';
import { MatTabsModule } from '@angular/material/tabs';
import { MatExpansionModule } from '@angular/material/expansion';
import { MatTooltipModule } from '@angular/material/tooltip';
import { MatBadgeModule } from '@angular/material/badge';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [
    CommonModule,
    MatCardModule,
    MatButtonModule,
    MatIconModule,
    MatGridListModule,
    MatChipsModule,
    MatDividerModule,
    MatProgressBarModule,
    MatTabsModule,
    MatExpansionModule,
    MatTooltipModule,
    MatBadgeModule
  ],
  templateUrl: './home.html',
  styleUrls: ['./home.css']
})
export class Home {
  stats = [
    { value: '15K+', label: 'Case Precedents', icon: 'gavel', tooltip: 'Indexed legal cases from multiple jurisdictions' },
    { value: '98%', label: 'Citation Accuracy', icon: 'verified', tooltip: 'Precision in legal reference matching' },
    { value: '50+', label: 'Jurisdictions', icon: 'public', tooltip: 'Cross-border legal systems supported' },
    { value: '24/7', label: 'Secure Access', icon: 'security', tooltip: 'Encrypted, authenticated judicial access' }
  ];

  // Core System Features with Legal Focus
  features = [
    {
      title: 'Akoma Ntoso Integration',
      description: 'Advanced XML-based legal document structuring for standardized parliamentary, legislative, and judicial documents.',
      icon: 'description',
      color: '#1a237e',
      benefits: [
        'Automatic document structuring',
        'FRBR metadata compliance',
        'Hierarchical section mapping',
        'Cross-reference detection'
      ],
      standards: ['Akoma Ntoso 3.0', 'OASIS LegalDocumentML']
    },
    {
      title: 'LegalRuleML Engine',
      description: 'Formal representation of legal norms, permissions, obligations, and temporal aspects of legislation.',
      icon: 'rule',
      color: '#4a148c',
      benefits: [
        'Deontic logic modeling',
        'Temporal rule validation',
        'Conflict resolution algorithms',
        'Rule provenance tracking'
      ],
      standards: ['LegalRuleML 1.0', 'OWL 2 DL']
    },
    {
      title: 'NLP Case Reasoning',
      description: 'Advanced natural language processing for legal text analysis, precedent matching, and ratio decidendi extraction.',
      icon: 'psychology',
      color: '#004d40',
      benefits: [
        'Semantic precedent search',
        'Legal entity recognition',
        'Argument mining',
        'Similarity scoring'
      ],
      standards: ['LegalBERT', 'RoBERTa-Legal']
    },
    {
      title: 'Knowledge Graph',
      description: 'Semantic network of legal concepts, relationships, and hierarchical structures across multiple legal domains.',
      icon: 'account_tree',
      color: '#b71c1c',
      benefits: [
        'Concept relationship mapping',
        'Jurisdictional hierarchy',
        'Cross-referenced citations',
        'Legal ontology integration'
      ],
      standards: ['RDF 1.1', 'OWL 2', 'SKOS']
    },
    {
      title: 'Decision Support',
      description: 'AI-assisted judicial reasoning with explainable outcomes and relevant precedent suggestions.',
      icon: 'assured_workload',
      color: '#bf360c',
      benefits: [
        'Argument strength analysis',
        'Counter-factual reasoning',
        'Outcome probability',
        'Explainable AI (XAI)'
      ],
      standards: ['GDPR compliant', 'EU AI Act ready']
    },
    {
      title: 'Secure Repository',
      description: 'Encrypted, authenticated storage with comprehensive audit trails for sensitive legal documents.',
      icon: 'enhanced_encryption',
      color: '#0d47a1',
      benefits: [
        'End-to-end encryption',
        'Digital signatures',
        'Audit logging',
        'Role-based access'
      ],
      standards: ['eIDAS', 'ISO 27001']
    }
  ];

  // Legal Domains Covered
  domains = [
    { name: 'Constitutional Law', cases: 2345, icon: 'account_balance' },
    { name: 'Criminal Law', cases: 4567, icon: 'gavel' },
    { name: 'Civil Procedure', cases: 3456, icon: 'folder_copy' },
    { name: 'Administrative Law', cases: 2123, icon: 'apartment' },
    { name: 'European Law', cases: 1890, icon: 'flag' },
    { name: 'Human Rights', cases: 1567, icon: 'handshake' }
  ];

  // Recent Precedents
  recentPrecedents = [
    {
      case: 'Müller v. Germany',
      citation: '[2025] ECtHR 123',
      court: 'European Court of Human Rights',
      date: '15 March 2025',
      summary: 'Privacy rights vs. national security in digital surveillance',
      relevance: 0.95,
      tags: ['Art. 8 ECHR', 'Digital Rights', 'Proportionality']
    },
    {
      case: 'R v. Digital Privacy Commission',
      citation: '[2025] UKSC 45',
      court: 'UK Supreme Court',
      date: '28 February 2025',
      summary: 'Data retention obligations of social media platforms',
      relevance: 0.89,
      tags: ['Data Protection', 'GDPR', 'Platform Liability']
    },
    {
      case: 'Commission v. TechCorp',
      citation: 'C-789/24',
      court: 'Court of Justice of the EU',
      date: '10 January 2025',
      summary: 'AI system classification under EU AI Act',
      relevance: 0.92,
      tags: ['AI Act', 'Risk Classification', 'Fundamental Rights']
    }
  ];

  // Research Partners
  partners = [
    { name: 'Max Planck Institute for Legal Informatics', logo: 'assets/partners/max-planck.svg', type: 'Research' },
    { name: 'European Law Institute', logo: 'assets/partners/eli.svg', type: 'Institution' },
    { name: 'Stanford CodeX Center', logo: 'assets/partners/stanford.svg', type: 'Academic' },
    { name: 'Court of Justice of the EU', logo: 'assets/partners/cjeu.svg', type: 'Judicial' },
    { name: 'LegalXML Organization', logo: 'assets/partners/legalxml.svg', type: 'Standards' }
  ];

  // Publications
  publications = [
    {
      title: 'Automated Reasoning with LegalRuleML and Akoma Ntoso: A Framework for Judicial Decision Support',
      authors: 'Prof. Dr. Schmidt, Dr. Weber, LL.M.',
      journal: 'Journal of Legal Informatics, Vol. 15(2), pp. 145-178',
      year: 2025,
      citations: 23
    },
    {
      title: 'NLP-based Precedent Retrieval in Civil Law Systems: A Benchmark Study',
      authors: 'Dr. Martinez, Prof. Dubois',
      journal: 'Artificial Intelligence and Law, Springer',
      year: 2024,
      citations: 45
    }
  ];

  // FAQ with Legal Context
  faqs = [
    {
      question: 'How does the system ensure compliance with legal citation standards?',
      answer: 'The system implements comprehensive citation parsing and validation based on multiple jurisdictional standards including OSCOLA, Bluebook, and German Juristic Citation formats. All references are validated against our curated database of official legal sources.'
    },
    {
      question: 'Can the system handle multi-jurisdictional legal research?',
      answer: 'Yes, our knowledge graph spans 50+ jurisdictions with hierarchical relationship mapping. The system can identify cross-border legal principles and comparative law perspectives, essential for cases involving international elements.'
    },
    {
      question: 'How is the AI reasoning made explainable for judicial use?',
      answer: 'Our explainable AI module provides step-by-step reasoning trails, highlighting relevant precedents, legal rules applied, and confidence scores. Each recommendation includes citations to supporting authorities and alternative interpretations considered.'
    },
    {
      question: 'What security measures protect sensitive case data?',
      answer: 'The system employs end-to-end encryption with judicial PKI integration, comprehensive audit logging, and role-based access control meeting EU judicial data protection standards. All access is authenticated through national judicial networks.'
    }
  ];

  // Methodology Metrics
  methodologyMetrics = [
    { stage: 'Document Parsing (Akoma Ntoso)', progress: 100, status: 'complete' },
    { stage: 'Rule Extraction (LegalRuleML)', progress: 95, status: 'complete' },
    { stage: 'Semantic Indexing', progress: 90, status: 'complete' },
    { stage: 'NLP Training (Legal Domain)', progress: 85, status: 'in-progress' },
    { stage: 'Validation with Courts', progress: 60, status: 'in-progress' }
  ];

  scrollToSection(sectionId: string) {
    document.getElementById(sectionId)?.scrollIntoView({ behavior: 'smooth' });
  }
}