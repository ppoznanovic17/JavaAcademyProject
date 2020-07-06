import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Subject} from '../../models/subject';
import {SERVER_API} from '../../app.constants';
import {Assistant} from '../../models/assistant';
import {Professor} from '../../models/professor';
import {AssistantSubject} from '../../models/assistant_subject';
import {StudentSubject} from '../../models/student_subject';

@Injectable({
  providedIn: 'root'
})
export class AssistantService {

  constructor(private http: HttpClient) { }

  geAllAssistants() {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Assistant[]>(`${SERVER_API}assistant/all`,{headers:headers})

  }

  getAssistantsSubjects(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<AssistantSubject[]>(`${SERVER_API}assistant/${id}/teacher`,{headers:headers})

  }

  getAssistantsNoSubjects(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Subject[]>(`${SERVER_API}assistant/${id}/noteacher`,{headers:headers})

  }

  addAssistantToSubject(assistantId:number, subjectId:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.post<AssistantSubject>(`${SERVER_API}assistant/asssubj`,{assistantId, subjectId}, {headers:headers})

  }

  getAssistant(id:number){
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Assistant>(`${SERVER_API}assistant/${id}`,{headers:headers})
  }



  createAssistant(name:string, lastName:string) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.post<Assistant>(`${SERVER_API}admin/create/assistant`,{name, lastName}, {headers:headers})

  }

  deleteAssistantSubject(assistantId:number, subjectId:number){

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})
    console.log(assistantId, subjectId);
    return this.http.delete<AssistantSubject>(`${SERVER_API}assistant/delete/${assistantId}/${subjectId}`, {headers: headers})

  }

  addPoints(studentId:number, subjectId:number, points:number) {
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})

    console.log({studentId, subjectId, points});
    return this.http.put<StudentSubject>(`${SERVER_API}assistant/addpoints`,{studentId, subjectId, points}, {headers:headers})
  }


}
