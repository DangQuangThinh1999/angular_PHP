import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { DSNhaXuatBan } from 'src/app/QLSach';

@Component({
  selector: 'app-nhaxuatban',
  templateUrl: './nhaxuatban.component.html',
  styleUrls: ['./nhaxuatban.component.css']
})
export class NhaxuatbanComponent implements OnInit {
  nut = 'create New';

  nhaxuatbans: DSNhaXuatBan[] = [];
  selectedDSNhaXuatBan: DSNhaXuatBan = {
    MANXB: 0,
    TENXB: '',
    DIACHI: '',
    DIENTHOAI: 0,
  };
  constructor(private apiService: ApiService) {
    this.apiService
      .readNhaXuatBan()
      .subscribe((nhaxuatbans: DSNhaXuatBan[]) => {
        this.nhaxuatbans = nhaxuatbans;
      });
  }

  ClearDSNhaXuatBan() {
    this.selectedDSNhaXuatBan.MANXB = 0;
    this.selectedDSNhaXuatBan.TENXB = '';
    this.selectedDSNhaXuatBan.DIACHI = '';
    this.selectedDSNhaXuatBan.DIENTHOAI = 0;
    this.nut = 'Create New';
  }
  ngOnInit(): void {}

  UpdateOrCreateDSNhaXuatBan(form: any) {
    form.value.MANXB = this.selectedDSNhaXuatBan.MANXB;
    form.value.TENXB = this.selectedDSNhaXuatBan.TENXB;
    form.value.DIACHI = this.selectedDSNhaXuatBan.DIACHI;
    form.value.DIENTHOAI = this.selectedDSNhaXuatBan.DIENTHOAI;
    if (this.selectedDSNhaXuatBan && this.selectedDSNhaXuatBan.MANXB) {
      this.apiService
        .updateNhaXuatBan(form.value)
        .subscribe((nhaxuatbans: DSNhaXuatBan[]) => {
          //console.log("DSNhaXuatBan updated", DSNhaXuatBan);
          this.apiService
            .readNhaXuatBan()
            .subscribe((nhaxuatbans: DSNhaXuatBan[]) => {
              this.nhaxuatbans = nhaxuatbans;
              this.ClearDSNhaXuatBan();
            });
        });
    } else {
      this.apiService
        .createNhaXuatBan(form.value)
        .subscribe((DSNhaXuatBan: DSNhaXuatBan[]) => {
          //console.log("DSNhaXuatBan created, ", DSNhaXuatBan);
          this.apiService
            .readNhaXuatBan()
            .subscribe((nhaxuatbans: DSNhaXuatBan[]) => {
              this.nhaxuatbans = nhaxuatbans;
              this.ClearDSNhaXuatBan();
            });
        });
    }
  }

  selectDSNhaXuatBan(DSNhaXuatBan: DSNhaXuatBan) {
    this.selectedDSNhaXuatBan = DSNhaXuatBan;
    this.nut = 'Update';
  }

  deleteDSNhaXuatBan(id: number) {
    this.apiService
      .deleteNhaXuatBan(id)
      .subscribe((DSNhaXuatBan: DSNhaXuatBan[]) => {
        console.log('DSNhaXuatBan deleted, ', DSNhaXuatBan);
        this.apiService
          .readNhaXuatBan()
          .subscribe((nhaxuatbans: DSNhaXuatBan[]) => {
            this.nhaxuatbans = nhaxuatbans;
          });
      });
  }
}
