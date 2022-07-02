import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './User/header/header.component';
import { FooterComponent } from './User/footer/footer.component';
import { CarouselComponent } from './User/carousel/carousel.component';
import { LeftsideComponent } from './User/leftside/leftside.component';
import { RightsideComponent } from './User/rightside/rightside.component';
import { TestComponent } from './User/test/test.component';
import { DetailsComponent } from './User/details/details.component';
import { SigninComponent } from './User/signin/signin.component';
import { SignupComponent } from './User/signup/signup.component';
import { LoadbytypeComponent } from './User/loadbytype/loadbytype.component';
import { LoadbypublisherComponent } from './User/loadbypublisher/loadbypublisher.component';
import { ClientComponent } from './client/client.component';
import { AdminComponent } from './admin/admin.component';
import { InfoComponent } from './Admins/info/info.component';
import { KhachhangComponent } from './Admins/khachhang/khachhang.component';
import { LoaiComponent } from './Admins/loai/loai.component';
import { NhaxuatbanComponent } from './Admins/nhaxuatban/nhaxuatban.component';
import { SanphamComponent } from './Admins/sanpham/sanpham.component';
import { IdadminComponent } from './Admins/idadmin/idadmin.component';
import { BillComponent } from './User/bill/bill.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    FooterComponent,
    CarouselComponent,
    LeftsideComponent,
    RightsideComponent,
    TestComponent,
    DetailsComponent,
    SigninComponent,
    SignupComponent,
    LoadbytypeComponent,
    LoadbypublisherComponent,
    ClientComponent,
    AdminComponent,
    InfoComponent,
    KhachhangComponent,
    LoaiComponent,
    NhaxuatbanComponent,
    SanphamComponent,
    IdadminComponent,
    BillComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
