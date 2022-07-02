import { Component, OnInit } from '@angular/core';
import { ApiService } from 'src/app/api.service';
import { DSAdmin } from 'src/app/QLSach';

@Component({
  selector: 'app-idadmin',
  templateUrl: './idadmin.component.html',
  styleUrls: ['./idadmin.component.css']
})
export class IdadminComponent implements OnInit {
  nut = 'Create New';

  admins: DSAdmin[] = [];
  selectedDSAdmin: DSAdmin = {
    MAAD: 0,
    USER: '',
    PASSWORD: '',
    HOTEN: '',
  };
  constructor(private apiService: ApiService) {
    this.apiService.readAdmin().subscribe((admins: DSAdmin[]) => {
      this.admins = admins;
    });
  }

  ClearDSAdmin() {
    this.selectedDSAdmin.MAAD = 0;
    this.selectedDSAdmin.USER = '';
    this.selectedDSAdmin.PASSWORD = '';
    this.selectedDSAdmin.HOTEN = '';
    this.nut = 'Create New';
  }
  ClearfDSAdmin(form:any) {
    form.value.MAAD = 0;
    form.value.USER = '';
    form.value.PASSWORD = '';
    form.value.HOTEN = '';
    this.nut = 'Create New';
  }
  ngOnInit(): void {}

  UpdateOrCreateDSAdmin(form: any) {
    form.value.MAAD = this.selectedDSAdmin.MAAD;
    form.value.USER = this.selectedDSAdmin.USER;
    form.value.PASSWORD = this.selectedDSAdmin.PASSWORD;
    form.value.HOTEN = this.selectedDSAdmin.HOTEN;
    if (this.selectedDSAdmin && this.selectedDSAdmin.MAAD) {
      this.apiService.updateAdmin(form.value).subscribe((admins: DSAdmin[]) => {
        //console.log("DSAdmin updated", DSAdmin);
        this.apiService.readAdmin().subscribe((admins: DSAdmin[]) => {
          this.admins = admins;
          this.ClearDSAdmin();
        });
      });
    } else {
      this.apiService
        .createAdmin(form.value)
        .subscribe((DSAdmin: DSAdmin[]) => {
          //console.log("DSAdmin created, ", DSAdmin);
          this.apiService.readAdmin().subscribe((admins: DSAdmin[]) => {
            this.admins = admins;
            this.ClearDSAdmin();
          });
        });
    }
  }

  selectDSAdmin(DSAdmin: DSAdmin) {
    this.selectedDSAdmin = DSAdmin;
    this.nut = 'Update';
  }

  deleteDSAdmin(id: number) {
    this.apiService.deleteAdmin(id).subscribe((DSAdmin: DSAdmin[]) => {
      console.log('DSAdmin deleted, ', DSAdmin);
      this.apiService.readAdmin().subscribe((admins: DSAdmin[]) => {
        this.admins = admins;
      });
    });
  }
}
