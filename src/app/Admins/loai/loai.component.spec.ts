import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LoaiComponent } from './loai.component';

describe('LoaiComponent', () => {
  let component: LoaiComponent;
  let fixture: ComponentFixture<LoaiComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LoaiComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LoaiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
