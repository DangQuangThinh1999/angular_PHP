import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { DSLoai } from 'src/app/QLSach';

@Component({
  selector: 'app-loai',
  templateUrl: './loai.component.html',
  styleUrls: ['./loai.component.css']
})
export class LoaiComponent implements OnInit {
  nut = 'create New';

  loais: DSLoai[] = [];
  selectedDSLoai: DSLoai = {
    MAL: 0,
    TENLOAI: '',
  };
  constructor(private apiService: ApiService) {
    this.apiService.readLoai().subscribe((loais: DSLoai[]) => {
      this.loais = loais;
    });
  }

  ClearDSLoai() {
    this.selectedDSLoai.MAL = 0;
    this.selectedDSLoai.TENLOAI = '';

    this.nut = 'Create New';
  }
  ngOnInit(): void {}

  UpdateOrCreateDSLoai(form: any) {
    form.value.MAL = this.selectedDSLoai.MAL;
    form.value.TENLOAI = this.selectedDSLoai.TENLOAI;

    if (this.selectedDSLoai && this.selectedDSLoai.MAL) {
      this.apiService.updateLoai(form.value).subscribe((loais: DSLoai[]) => {
        //console.log("DSLoai updated", DSLoai);
        this.apiService.readLoai().subscribe((loais: DSLoai[]) => {
          this.loais = loais;
          this.ClearDSLoai();
        });
      });
    } else {
      this.apiService.createLoai(form.value).subscribe((DSLoai: DSLoai[]) => {
        //console.log("DSLoai created, ", DSLoai);
        this.apiService.readLoai().subscribe((loais: DSLoai[]) => {
          this.loais = loais;
          this.ClearDSLoai();
        });
      });
    }
  }

  selectDSLoai(DSLoai: DSLoai) {
    this.selectedDSLoai = DSLoai;
    this.nut = 'Sửa';
  }

  deleteDSLoai(id: number) {
    this.apiService.deleteLoai(id).subscribe((DSLoai: DSLoai[]) => {
      console.log('DSLoai deleted, ', DSLoai);
      this.apiService.readLoai().subscribe((loais: DSLoai[]) => {
        this.loais = loais;
      });
    });
  }
}
