import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { StudentRateSubjectComponent } from './student-rate-subject.component';

describe('StudentRateSubjectComponent', () => {
  let component: StudentRateSubjectComponent;
  let fixture: ComponentFixture<StudentRateSubjectComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ StudentRateSubjectComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(StudentRateSubjectComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
