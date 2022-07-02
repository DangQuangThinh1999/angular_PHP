import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { DSKhachHang } from 'src/app/QLSach';

@Component({
  selector: 'app-khachhang',
  templateUrl: './khachhang.component.html',
  styleUrls: ['./khachhang.component.css']
})
export class KhachhangComponent implements OnInit {
  nut = 'Create Customer';

  khachhangs: DSKhachHang[] = [];
  selectedKhachHang: DSKhachHang = {
    MAKH: 0,
    HOTEN: '',
    TAIKHOAN: '',
    MATKHAU: '',
    EMAIL: '',
    GIOITINH: '',
    DIACHIKH: '',
    DIENTHOAI: 0,
    NGAYSINH: '',
  };
  constructor(private apiService: ApiService) {
    this.apiService.readKhachHang().subscribe((khachhangs: DSKhachHang[]) => {
      this.khachhangs = khachhangs;
    });
  }
  clearKhachHang() {
    this.selectedKhachHang.MAKH = 0;
    this.selectedKhachHang.HOTEN = '';
    this.selectedKhachHang.TAIKHOAN = '';
    this.selectedKhachHang.MATKHAU = '';
    this.selectedKhachHang.EMAIL = '';
    this.selectedKhachHang.GIOITINH = '';
    this.selectedKhachHang.DIACHIKH = '';
    this.selectedKhachHang.DIENTHOAI = 0;
    this.selectedKhachHang.NGAYSINH = '';
    this.nut = 'Create Customer';
  }
  ngOnInit(): void {}

  UpdateOrCreateKHACHHANG(form: any) {
    form.value.MAKH = this.selectedKhachHang.MAKH;
    form.value.HOTEN = this.selectedKhachHang.HOTEN;
    form.value.TAIKHOAN = this.selectedKhachHang.TAIKHOAN;
    form.value.MATKHAU = this.selectedKhachHang.MATKHAU;
    form.value.EMAIL = this.selectedKhachHang.EMAIL;
    form.value.GIOITINH = this.selectedKhachHang.GIOITINH;
    form.value.DIACHIKH = this.selectedKhachHang.DIACHIKH;
    form.value.DIENTHOAI = this.selectedKhachHang.DIENTHOAI;
    form.value.NGAYSINH = this.selectedKhachHang.NGAYSINH;

    if (this.selectedKhachHang && this.selectedKhachHang.MAKH) {
      this.apiService
        .updateKhachHang(form.value)
        .subscribe((khachhangs: DSKhachHang[]) => {
          //console.log("KHACHHANG updated", KHACHHANG);
          this.apiService
            .readKhachHang()
            .subscribe((khachhangs: DSKhachHang[]) => {
              this.khachhangs = khachhangs;
              this.clearKhachHang();
            });
        });
    } else {
      this.apiService
        .createKhachHang(form.value)
        .subscribe((khachhangs: DSKhachHang[]) => {
          //console.log("KHACHHANG created, ", KHACHHANG);
          this.apiService
            .readKhachHang()
            .subscribe((khachhangs: DSKhachHang[]) => {
              this.khachhangs = khachhangs;
              this.clearKhachHang();
            });
        });
    }
  }

  selectKhachHang(khachhang: DSKhachHang) {
    this.selectedKhachHang = khachhang;
    this.nut = 'Update';
  }

  deleteKhachHang(MAKH: number) {
    this.apiService
      .deleteKhachHang(MAKH)
      .subscribe((khachhangs: DSKhachHang[]) => {
        console.log('KHACHHANG deleted, ', khachhangs);
        this.apiService
          .readKhachHang()
          .subscribe((khachhangs: DSKhachHang[]) => {
            this.khachhangs = khachhangs;
          });
      });
  }
}
