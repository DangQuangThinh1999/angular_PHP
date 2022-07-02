import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NhaxuatbanComponent } from './nhaxuatban.component';

describe('NhaxuatbanComponent', () => {
  let component: NhaxuatbanComponent;
  let fixture: ComponentFixture<NhaxuatbanComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NhaxuatbanComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(NhaxuatbanComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
