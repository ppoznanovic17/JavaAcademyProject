import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import {AppRoutingModule} from "./app-routing.module";
import { LoginComponent } from './components/login/login.component';
import { ErrorComponent } from './components/error/error.component';
import {HttpClientModule} from "@angular/common/http";
import {FormsModule} from '@angular/forms';
import { HeaderComponent } from './components/header/header.component';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';
import {
  MatButtonModule, MatDialogModule,
  MatGridListModule,
  MatInputModule,
  MatSelectModule,
  MatSlideToggleModule,
  MatToolbarModule
} from '@angular/material';
import {FontAwesomeModule} from '@fortawesome/angular-fontawesome';
import {AdminHomeComponent} from './components/admin-home/admin-home.component';
import { StudentHomeComponent } from './components/student-home/student-home.component';
import { AssistantHomeComponent } from './components/assistant-home/assistant-home.component';
import {ProfessorHomeComponent} from './components/professor-home/professor-home.component';
import { AdminSubjectComponent } from './components/admin-subject/admin-subject.component';
import { AdminStudentComponent } from './components/admin-student/admin-student.component';
import { AdminProfessorComponent } from './components/admin-professor/admin-professor.component';
import { AdminAssistantComponent } from './components/admin-assistant/admin-assistant.component';
import { ProfessorSubjectComponent } from './components/professor-subject/professor-subject.component';
import { AssistantSubjectComponent } from './components/assistant-subject/assistant-subject.component';
import { StudentRateSubjectComponent } from './components/student-rate-subject/student-rate-subject.component';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    ErrorComponent,
    HeaderComponent,
    AdminHomeComponent,
    StudentHomeComponent,
    AssistantHomeComponent,
    ProfessorHomeComponent,
    AdminSubjectComponent,
    AdminStudentComponent,
    AdminProfessorComponent,
    AdminAssistantComponent,
    ProfessorSubjectComponent,
    AssistantSubjectComponent,
    StudentRateSubjectComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    MatButtonModule,
    MatToolbarModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    MatGridListModule,
    MatInputModule,
    MatSelectModule,
    MatSlideToggleModule,
    MatDialogModule,
    MatGridListModule,
    FontAwesomeModule,

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
