import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GenerateJudgement } from './generate-judgement';

describe('GenerateJudgement', () => {
  let component: GenerateJudgement;
  let fixture: ComponentFixture<GenerateJudgement>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [GenerateJudgement]
    })
    .compileComponents();

    fixture = TestBed.createComponent(GenerateJudgement);
    component = fixture.componentInstance;
    await fixture.whenStable();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
