import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { DSLoai, DSNhaXuatBan, DSSanPham } from 'src/app/QLSach';
import { Router, NavigationExtras } from '@angular/router';

@Component({
  selector: 'app-leftside',
  templateUrl: './leftside.component.html',
  styleUrls: ['./leftside.component.css'],
})
export class LeftsideComponent implements OnInit {
  loais: DSLoai[] = [];
  selectedLoai: DSLoai = { MAL: 0, TENLOAI: '' };

  nhaxuatbans: DSNhaXuatBan[] = [];
  selectedNXB: DSNhaXuatBan = { MANXB: 0, TENXB: '', DIACHI: '', DIENTHOAI: 0 };

  sanphams: DSSanPham[] = [];
  selectedSach: DSSanPham = {
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

  constructor(private apiService: ApiService, private router: Router) {

    this.apiService
      .readNhaXuatBan()
      .subscribe((nhaxuatbans: DSNhaXuatBan[]) => {
        this.nhaxuatbans = nhaxuatbans;
      });
    this.apiService.readLoai().subscribe((loais: DSLoai[]) => {
      this.loais = loais;
    });
  }
  ngOnInit(): void {}

  selectL(loai: DSLoai) {
    this.selectedLoai = loai;
  }

  selectNXB(nhaxuatban: DSNhaXuatBan) {
    this.selectedNXB = nhaxuatban;
  }

  // getDSsp(loai:DSLoai){
  //   this.apiService.loadSanPhamTL(loai.TENLOAI).subscribe((sanphams:DSSanPham[])=>{
  //     this.sanphams = sanphams;
  //   });
  // }
  public XemSPTLs() {
    let navigationExtras: NavigationExtras = {
      queryParams: {
        TENLOAI: this.selectedLoai.TENLOAI,
      },
    };
    this.router.navigate(['client/sptloai'], navigationExtras).then(() => {
      window.location.reload();
    });
  }

  public XemSPTNXBs() {
    let navigationExtras: NavigationExtras = {
      queryParams: {
        TENXB: this.selectedNXB.TENXB,
      },
    };
    this.router.navigate(['client/sptnxb'], navigationExtras)
    .then(() => {
      window.location.reload();
    });
  }
}
