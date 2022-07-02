import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { DSSanPham } from 'src/app/QLSach';
import { Router,NavigationExtras } from '@angular/router';

@Component({
  selector: 'app-rightside',
  templateUrl: './rightside.component.html' ,
  styleUrls: ['./rightside.component.css']
})
export class RightsideComponent implements OnInit {

  // MASP:number=0;
  // "TENSP":form.value.TENSP;
  //            "GIABAN":form.value.GIABAN;
  //            "SOTRANG":form.value.SOTRANG;
  //           "NGONNGU":form.value.NGONNGU;
  //            "KICHTHUOC":form.value.KICHTHUOC;
  //           "TRONGLUONG":form.value.TRONGLUONG;
  //           "MOTA":form.value.MOTA; 
  //           "ANHBIA":form.value.ANHBIA; 
  //           "NGAYCAPNHAT":form.value.NGAYCAPNHAT; 
  //           "SOLUONGTON":form.value.SOLUONGTON; 
  //           "TENLOAI":form.value.TENLOAI; 
  //           "TENXB":form.value.TENXB

  sanphams:DSSanPham[]=[];
  selectedSach: DSSanPham={MASP:0,TENSP:"",GIABAN:0, SOTRANG:0, NGONNGU:"", KICHTHUOC:"", TRONGLUONG:"", MOTA:"", ANHBIA:"", NGAYCAPNHAT:"", SOLUONGTON:0, TENLOAI:"", TENXB:"" }  
  constructor(private apiService: ApiService,private router:Router) { 
    this.apiService.readSanPham().subscribe((sanphams: DSSanPham[]) => {
      this.sanphams = sanphams;
    })
  }

  ngOnInit(): void {
  }
  selectSach(sanpham:DSSanPham){
    this.selectedSach =sanpham;
  }
    public XemDetails(){
      let navigationExtras: NavigationExtras = {
          queryParams: {
            "MASP":this.selectedSach.MASP,
            "TENSP":this.selectedSach.TENSP,
            "GIABAN":this.selectedSach.GIABAN, 
            "SOTRANG":this.selectedSach.SOTRANG, 
            "NGONNGU":this.selectedSach.NGONNGU, 
            "KICHTHUOC":this.selectedSach.KICHTHUOC, 
            "TRONGLUONG":this.selectedSach.TRONGLUONG,
            "MOTA":this.selectedSach.MOTA, 
            "ANHBIA":this.selectedSach.ANHBIA, 
            "NGAYCAPNHAT":this.selectedSach.NGAYCAPNHAT, 
            "SOLUONGTON":this.selectedSach.SOLUONGTON, 
            "TENLOAI":this.selectedSach.TENLOAI, 
            "TENXB":this.selectedSach.TENXB
          }
      };
      this.router.navigate(["client/details"], navigationExtras);
    }
}
