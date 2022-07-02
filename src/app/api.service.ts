import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SanPham,  DSAdmin,  DSKhachHang,  DSLoai,  DSNhaXuatBan,  DSSanPham,} from './QLSach';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  PHP_API_SERVER = "http://localhost:8080/api";
  constructor(private httpClient: HttpClient) {}
 
  //----------------------------------ADMIN-----------------------
  readAdmin(): Observable<DSAdmin[]> {
    return this.httpClient.get<DSAdmin[]>(`${this.PHP_API_SERVER}/read_Admin.php`);}
  createAdmin(admin: DSAdmin) {
    return this.httpClient.post<DSAdmin[]>(
      `${this.PHP_API_SERVER}/create_Admin.php`,
      admin
    );
  }

  deleteAdmin(MAAD: number) {
    return this.httpClient.delete<DSAdmin[]>(
      `${this.PHP_API_SERVER}/delete_Admin.php/?MAAD=${MAAD}`
    );
  }

  updateAdmin(admin: DSAdmin) {
    return this.httpClient.patch<DSAdmin[]>(
      `${this.PHP_API_SERVER}/update_Admin.php`,
      admin
    );
  }

  //-------------------------------KHACHHANG----------------------------
  readKhachHang(): Observable<DSKhachHang[]> {
    return this.httpClient.get<DSKhachHang[]>(
      `${this.PHP_API_SERVER}/read_KhachHang.php`
    );
  }
  createKhachHang(khachhang: DSKhachHang) {
    return this.httpClient.post<DSKhachHang[]>(
      `${this.PHP_API_SERVER}/create_KhachHang.php`,
      khachhang
    );
  }

  deleteKhachHang(MAKH: number) {
    return this.httpClient.delete<DSKhachHang[]>(
      `${this.PHP_API_SERVER}/delete_KhachHang.php/?MAKH=${MAKH}`
    );
  }

  updateKhachHang(khachhang: DSKhachHang) {
    return this.httpClient.patch<DSKhachHang[]>(
      `${this.PHP_API_SERVER}/update_KHACHHANG.php`,
      khachhang
    );
  }
  //------------------------------SANPHAM------------------------------------
  readSanPham(): Observable<DSSanPham[]> {
    return this.httpClient.get<DSSanPham[]>(
      `${this.PHP_API_SERVER}/read_SanPham.php`
    );
  }
  createSanPham(sanphams: SanPham) {
    return this.httpClient.post<SanPham>(
      `${this.PHP_API_SERVER}/create_SanPham.php`,
      sanphams
    );
  }

  deleteSanPham(MASP: number) {
    return this.httpClient.delete<SanPham>(
      `${this.PHP_API_SERVER}/delete_SanPham.php/?MASP=${MASP}`
    );
  }

  updateSanPham(sanphams: SanPham) {
    return this.httpClient.put<SanPham>(
      `${this.PHP_API_SERVER}/update_SanPham.php`,
      sanphams
    );
  } 

  loadSanPhamTL(TENLOAI:string):Observable<DSSanPham[]>{
    return this.httpClient.get<DSSanPham[]>(`${this.PHP_API_SERVER}/Loai_SanPham.php/?TENLOAI=${TENLOAI}`)
  }
  loadSanPhamTNXB(TENXB:string):Observable<DSSanPham[]>{
    return this.httpClient.get<DSSanPham[]>(`${this.PHP_API_SERVER}/NXB_SanPham.php/?TENXB=${TENXB}`)
  }

  //----------------------------------LOAI------------------------------
  readLoai(): Observable<DSLoai[]> {
    return this.httpClient.get<DSLoai[]>(
      `${this.PHP_API_SERVER}/read_Loai.php`
    );
  }
  createLoai(loai: DSLoai) {
    return this.httpClient.post<DSLoai[]>(
      `${this.PHP_API_SERVER}/create_Loai.php`,
      loai
    );
  }

  deleteLoai(MAL: number) {
    return this.httpClient.delete<DSLoai[]>(
      `${this.PHP_API_SERVER}/delete_Loai.php/?MAL=${MAL}`
    );
  }

  updateLoai(loai: DSLoai) {
    return this.httpClient.patch<DSLoai[]>(
      `${this.PHP_API_SERVER}/update_Loai.php`,
      loai
    );
  }
  //---------------------------------NHÀ XUẤT BẢN -----------------------------
  readNhaXuatBan(): Observable<DSNhaXuatBan[]> {
    return this.httpClient.get<DSNhaXuatBan[]>(
      `${this.PHP_API_SERVER}/read_NhaXuatBan.php`
    );
  }
  createNhaXuatBan(nhaxuatban: DSNhaXuatBan) {
    return this.httpClient.post<DSNhaXuatBan[]>(
      `${this.PHP_API_SERVER}/create_NhaXuatBan.php`,
      nhaxuatban
    );
  }

  deleteNhaXuatBan(MANXB: number) {
    return this.httpClient.delete<DSNhaXuatBan[]>(
      `${this.PHP_API_SERVER}/delete_NhaXuatBan.php/?MANXB=${MANXB}`
    );
  }

  updateNhaXuatBan(nhaxuatban: DSNhaXuatBan) {
    return this.httpClient.patch<DSNhaXuatBan[]>(
      `${this.PHP_API_SERVER}/update_NhaXuatBan.php`,
      nhaxuatban
    );
  }
  //-----------------------------
  
}
