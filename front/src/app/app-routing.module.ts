import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {LoginComponent} from './components/login/login.component';
import {ErrorComponent} from './components/error/error.component';
import {AdminHomeComponent} from './components/admin-home/admin-home.component';
import {AssistantHomeComponent} from './components/assistant-home/assistant-home.component';
import {ProfessorHomeComponent} from './components/professor-home/professor-home.component';
import {StudentHomeComponent} from './components/student-home/student-home.component';
import {AdminStudentComponent} from './components/admin-student/admin-student.component';
import {AdminProfessorComponent} from './components/admin-professor/admin-professor.component';
import {AdminAssistantComponent} from './components/admin-assistant/admin-assistant.component';
import {AdminSubjectComponent} from './components/admin-subject/admin-subject.component';
import {ProfessorSubjectComponent} from './components/professor-subject/professor-subject.component';
import {AssistantSubjectComponent} from './components/assistant-subject/assistant-subject.component';
import {StudentRateSubjectComponent} from './components/student-rate-subject/student-rate-subject.component';




const routes: Routes = [
  { path: '', component: LoginComponent },
  { path: 'home/admin', component: AdminHomeComponent },
  { path: 'home/student', component: StudentHomeComponent },
  { path: 'home/professor', component: ProfessorHomeComponent },
  { path: 'home/assistant', component: AssistantHomeComponent },
  { path: 'admin/student/:id', component: AdminStudentComponent },
  { path: 'admin/professor/:id', component: AdminProfessorComponent },
  { path: 'admin/assistant/:id', component: AdminAssistantComponent },
  { path: 'admin/subject/:id', component: AdminSubjectComponent },
  { path: 'professor/subject/:id', component: ProfessorSubjectComponent },
  { path: 'assistant/subject/:id', component: AssistantSubjectComponent },
  { path: 'student/rate/:id', component: StudentRateSubjectComponent },


  {path: '**', component: ErrorComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

