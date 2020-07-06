import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {SERVER_API} from '../../app.constants';
import {Subject} from '../../models/subject';
import {Professor} from '../../models/professor';
import {Assistant} from '../../models/assistant';
import {Student} from '../../models/student';
import {RatingResDto} from '../../models/dto/rating_res_dto';
import {StudentSubject} from '../../models/student_subject';

@Injectable({
  providedIn: 'root'
})
export class SubjectService {

  constructor(private http: HttpClient) { }

  getAllSubjects() {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Subject[]>(`${SERVER_API}/subject/all`,{headers:headers})

  }

  getSubject(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Subject>(`${SERVER_API}/subject/${id}`,{headers:headers})

  }

  getSubjectAssistants(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Assistant[]>(`${SERVER_API}/subject/${id}/assistants`,{headers:headers})

  }

  getReviews(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<RatingResDto[]>(`${SERVER_API}subject/ratings/${id}`,{headers:headers})

  }

  getAverage(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<number>(`${SERVER_API}subject/avgrate/${id}`,{headers:headers})

  }

  getSubjectStudents(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Student[]>(`${SERVER_API}/subject/${id}/students`,{headers:headers})

  }

  createSubject( name:string, ESPB:number, semester:number, maxAssistantPoints:number, maxProfessorPoints:number, p:Professor) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})

    let body = {
      name, ESPB, semester, maxAssistantPoints,maxProfessorPoints, "professor": p
    }


    return this.http.post<Subject[]>(`${SERVER_API}admin/create/subject`, body,{headers:headers})

  }

  getStudentSubjectBySubjectId(id:number){
      let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})



    return this.http.get<StudentSubject[]>(`${SERVER_API}subject/studentsubject/${id}`,{headers:headers})
  }


}
