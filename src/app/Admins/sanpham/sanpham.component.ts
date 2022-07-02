import { Component, OnInit } from '@angular/core';
import { DSLoai, DSSanPham, SanPham, DSNhaXuatBan } from 'src/app/QLSach';
import { ApiService } from 'src/app/api.service';
@Component({
  selector: 'app-sanpham',
  templateUrl: './sanpham.component.html',
  styleUrls: ['./sanpham.component.css']
})
export class SanphamComponent implements OnInit {
  nut = 'Create new';
  dssanphams: DSSanPham[] = []; // xem danh sách sản phẩm
  loais: DSLoai[] = [];

  nhaxuatbans: DSNhaXuatBan[] = [];

  sanphams: SanPham[] = []; // dùng để chỉnh sửa và tạo mới sản phẩm
  selectedSanPham: DSSanPham = {
    MASP: 0,
    TENSP: '',
    GIABAN: 0,
    SOTRANG: 0,
    NGONNGU: '',
    KICHTHUOC: '',
    TRONGLUONG: '',
    MOTA: '',
    ANHBIA: '',
    NGAYCAPNHAT: '',
    SOLUONGTON: 0,
    TENLOAI: '',
    TENXB: '',
  };
  //-------------------------------------------------------------------------

  constructor(private apiService: ApiService) {
    this.apiService.readSanPham().subscribe((dssanphams: DSSanPham[]) => {
      this.dssanphams = dssanphams;
    });
    this.apiService.readLoai().subscribe((loais: DSLoai[]) => {
      this.loais = loais;
    });
    this.apiService
      .readNhaXuatBan()
      .subscribe((nhaxuatbans: DSNhaXuatBan[]) => {
        this.nhaxuatbans = nhaxuatbans;
      });
  }

  ClearSanPham() {
    this.selectedSanPham.MASP = 0;
    this.selectedSanPham.TENSP = '';
    this.selectedSanPham.GIABAN = 0;
    this.selectedSanPham.SOTRANG = 0;
    this.selectedSanPham.NGONNGU = '';
    this.selectedSanPham.KICHTHUOC = '';
    this.selectedSanPham.TRONGLUONG = '';
    this.selectedSanPham.MOTA = '';
    this.selectedSanPham.ANHBIA = '';
    this.selectedSanPham.NGAYCAPNHAT = '';
    this.selectedSanPham.SOLUONGTON = 0;
    this.selectedSanPham.TENLOAI = '';
    this.selectedSanPham.TENXB = '';

    this.nut = 'Create new';
  }
  ngOnInit(): void {}

  UpdateOrCreateSANPHAM(form: any) {
    form.value.MASP = this.selectedSanPham.MASP;
    form.value.TENSP = this.selectedSanPham.TENSP;
    form.value.GIABAN = this.selectedSanPham.GIABAN;
    form.value.SOTRANG = this.selectedSanPham.SOTRANG;
    form.value.NGONNGU = this.selectedSanPham.NGONNGU;
    form.value.KICHTHUOC = this.selectedSanPham.KICHTHUOC;
    form.value.TRONGLUONG = this.selectedSanPham.TRONGLUONG;
    form.value.MOTA = this.selectedSanPham.MOTA;
    form.value.ANHBIA = this.selectedSanPham.ANHBIA;
    form.value.NGAYCAPNHAT = this.selectedSanPham.NGAYCAPNHAT;
    form.value.SOLUONGTON = this.selectedSanPham.SOLUONGTON;
    form.value.MAL = this.selectedSanPham.TENLOAI;
    form.value.MANXB = this.selectedSanPham.TENXB;
    if (this.selectedSanPham && this.selectedSanPham.MASP) {
      this.apiService
        .updateSanPham(form.value)
        .subscribe((sanphams: SanPham) => {
          //console.log("SANPHAM updated", SANPHAM);
          this.apiService.readSanPham().subscribe((dssanphams: DSSanPham[]) => {
            this.dssanphams = dssanphams;
            this.ClearSanPham();
          });
        });
    } else {
      this.apiService
        .createSanPham(form.value)
        .subscribe((sanphams: SanPham) => {
          //console.log("SANPHAM created, ", SANPHAM);
          this.apiService.readSanPham().subscribe((dssanphams: DSSanPham[]) => {
            this.dssanphams = dssanphams;
            this.ClearSanPham();
          });
        });
    }
  }

  selectSanPham(sanphams: DSSanPham) {
    this.selectedSanPham = sanphams;
    this.nut = 'Update';
  }

  deleteSanPham(MASP: number) {
    this.apiService.deleteSanPham(MASP).subscribe((sanphams: SanPham) => {
      console.log('SANPHAM deleted, ', sanphams);
      this.apiService.readSanPham().subscribe((dssanphams: DSSanPham[]) => {
        this.dssanphams = dssanphams;
      });
    });
  }
}
