import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { RightsideComponent } from './User/rightside/rightside.component';
import { DetailsComponent } from './User/details/details.component';
import { SigninComponent } from './User/signin/signin.component';
import { SignupComponent } from './User/signup/signup.component';
import { LoadbytypeComponent } from './User/loadbytype/loadbytype.component';
import { LoadbypublisherComponent } from './User/loadbypublisher/loadbypublisher.component';
import { ClientComponent } from './client/client.component';
import { AdminComponent } from './admin/admin.component';
import { IdadminComponent } from './Admins/idadmin/idadmin.component';
import { InfoComponent } from './Admins/info/info.component';
import { KhachhangComponent } from './Admins/khachhang/khachhang.component';
import { LoaiComponent } from './Admins/loai/loai.component';
import { NhaxuatbanComponent } from './Admins/nhaxuatban/nhaxuatban.component';
import { SanphamComponent } from './Admins/sanpham/sanpham.component';
import { BillComponent } from './User/bill/bill.component';

const routes: Routes = [
  { path: '', redirectTo: 'client', pathMatch: 'full' },
  {
    path: 'client',
    component: ClientComponent,
    children: [
      { path: '', component: RightsideComponent },
      { path: 'details', component: DetailsComponent },
      { path: 'signup', component: SignupComponent },
      { path: 'sptloai', component: LoadbytypeComponent },
      { path: 'sptnxb', component: LoadbypublisherComponent },
      { path: 'bill', component: BillComponent}
    ],
  },
  {
    path: 'adminstrator',
    component: AdminComponent,
    children: [
      { path: 'admin', component: IdadminComponent },
      { path: 'info', component: InfoComponent },
      { path: 'khachhang', component: KhachhangComponent },
      { path: 'loai', component: LoaiComponent },
      { path: 'nhaxuatban', component: NhaxuatbanComponent },
      { path: 'sanpham', component: SanphamComponent },
    ],
  },
  { path: 'signin', component: SigninComponent },
  { path: '**', component: ClientComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
