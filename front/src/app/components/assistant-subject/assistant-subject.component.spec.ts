import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AssistantSubjectComponent } from './assistant-subject.component';

describe('AssistantSubjectComponent', () => {
  let component: AssistantSubjectComponent;
  let fixture: ComponentFixture<AssistantSubjectComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AssistantSubjectComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AssistantSubjectComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
