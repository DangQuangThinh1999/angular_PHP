import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LoadbytypeComponent } from './loadbytype.component';

describe('LoadbytypeComponent', () => {
  let component: LoadbytypeComponent;
  let fixture: ComponentFixture<LoadbytypeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LoadbytypeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LoadbytypeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
