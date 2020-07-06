import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AdminAssistantComponent } from './admin-assistant.component';

describe('AdminAssistantComponent', () => {
  let component: AdminAssistantComponent;
  let fixture: ComponentFixture<AdminAssistantComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AdminAssistantComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AdminAssistantComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
