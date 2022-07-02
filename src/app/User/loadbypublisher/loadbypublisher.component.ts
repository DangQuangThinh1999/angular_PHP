import { ActivatedRoute } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { DSSanPham } from 'src/app/QLSach';
import { Router,NavigationExtras } from '@angular/router';

@Component({
  selector: 'app-loadbypublisher',
  templateUrl: './loadbypublisher.component.html',
  styleUrls: ['./loadbypublisher.component.css']
})
export class LoadbypublisherComponent implements OnInit {

  TENXB:string="";
  sanphams:DSSanPham[]=[];
  // sanphams: DSSanPham={MASP:0,TENSP:"",GIABAN:0, SOTRANG:0, NGONNGU:"", KICHTHUOC:"", TRONGLUONG:"", MOTA:"", ANHBIA:"", NGAYCAPNHAT:"", SOLUONGTON:0, TENLOAI:"", TENXB:"" }  
  selectedSach: DSSanPham={MASP:0,TENSP:"",GIABAN:0, SOTRANG:0, NGONNGU:"", KICHTHUOC:"", TRONGLUONG:"", MOTA:"", ANHBIA:"", NGAYCAPNHAT:"", SOLUONGTON:0, TENLOAI:"", TENXB:"" };  
  constructor(private route:ActivatedRoute,private router:Router,private apiService: ApiService) { 
    
    this.route.queryParams.subscribe(params=>{
      this.TENXB= params["TENXB"];         
    }); 
    this.apiService.loadSanPhamTNXB(this.TENXB).subscribe((sanphams:DSSanPham[])=>{
      this.sanphams = sanphams;
    }); 
    
    
    
    // this.getRoute(this.TENLOAI);
    //  this.apiService.loadSanPhamTL(this.TENLOAI).subscribe((sanphams: DSSanPham[]) => {
    //   this.sanphams = sanphams;    
    // }) ;
  }
  ngOnInit(): void {
  }
  
  // getRoute(TENLOAI:string){
  //   this.apiService.loadSanPhamTL(this.TENLOAI).subscribe((sanphams:DSSanPham[])=>{
  //     this.sanphams = sanphams;
  //   });    
  // }
  

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