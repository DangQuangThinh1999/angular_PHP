import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LoadbypublisherComponent } from './loadbypublisher.component';

describe('LoadbypublisherComponent', () => {
  let component: LoadbypublisherComponent;
  let fixture: ComponentFixture<LoadbypublisherComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LoadbypublisherComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(LoadbypublisherComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
