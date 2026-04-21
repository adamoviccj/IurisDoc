import { Component, Inject, OnInit } from '@angular/core';
import { LawResponse } from '../../models/law.model';
import { MAT_DIALOG_DATA, MatDialogModule } from '@angular/material/dialog';
import { LawService } from '../../services/law-service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-law-reference-dialog',
  imports: [MatDialogModule, CommonModule],
  templateUrl: './law-reference-dialog.html',
  styleUrl: './law-reference-dialog.css',
})
export class LawReferenceDialog implements OnInit{
  law: LawResponse | null = null;

  constructor(
    @Inject(MAT_DIALOG_DATA)
    public data: { lawName: string, target: string },
    private lawService: LawService
  ) {}


  ngOnInit(): void {
    

    this.lawService.getLaw(this.data.lawName).subscribe(law => {
      this.law = law;

      setTimeout(() => {
        const el = document.getElementById(this.data.target);
        if (el) {
          el.scrollIntoView({ behavior: 'smooth', block: 'center' });
        }
      }, 200);
    })
  }

}
