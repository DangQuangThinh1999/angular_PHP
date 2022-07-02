import { Component,OnInit } from '@angular/core';
import { DSSanPham } from 'src/app/QLSach';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-details',
  templateUrl: './details.component.html',
  styleUrls: ['./details.component.css'],
})
export class DetailsComponent implements OnInit{

  
  MASP:number=0;
  TENSP:string= "";
  GIABAN:number=0;
  SOTRANG:number=0;
  NGONNGU:string= "";
  KICHTHUOC:string= "";
  TRONGLUONG: string= "";
  MOTA:string= "";
  ANHBIA: string= "";
  NGAYCAPNHAT: string= "";
  SOLUONGTON:number=0;
  TENLOAI: string= "";
  TENXB : string= "";

  sanphams: DSSanPham[] = [];
  public constructor(private route: ActivatedRoute) {
    this.route.queryParams.subscribe(params => {
        this.MASP = params["MASP"];
        this.TENSP = params["TENSP"];
        this.GIABAN=params["GIABAN"];
        this.SOTRANG=params["SOTRANG"];
        this.NGONNGU= params["NGONNGU"];
        this.KICHTHUOC= params["KICHTHUOC"];
        this.TRONGLUONG= params["TRONGLUONG"];
        this.MOTA= params["MOTA"];
        this.ANHBIA= params["ANHBIA"];
        this.NGAYCAPNHAT= params["NGAYCAPNHAT"];
        this.SOLUONGTON=params["SOLUONGTON"];
        this.TENLOAI= params["TENLOAI"];
        this.TENXB= params["TENXB"];
    });
  }
  ngOnInit(): void {}
}
