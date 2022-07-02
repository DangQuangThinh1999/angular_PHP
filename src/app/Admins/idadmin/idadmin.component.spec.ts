import { ComponentFixture, TestBed } from '@angular/core/testing';

import { IdadminComponent } from './idadmin.component';

describe('IdadminComponent', () => {
  let component: IdadminComponent;
  let fixture: ComponentFixture<IdadminComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ IdadminComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(IdadminComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
