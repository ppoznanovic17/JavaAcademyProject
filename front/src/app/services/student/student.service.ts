import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Subject} from '../../models/subject';
import {SERVER_API} from '../../app.constants';
import {Student} from '../../models/student';
import {Professor} from '../../models/professor';
import {StudentSubject} from '../../models/student_subject';
import {AssistantSubject} from '../../models/assistant_subject';

@Injectable({
  providedIn: 'root'
})
export class StudentService {

  constructor(private http: HttpClient) { }

  getAllStudents() {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Student[]>(`${SERVER_API}student/all`,{headers:headers})

  }

  getStudent(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Student>(`${SERVER_API}student/${id}`,{headers:headers})

  }

  getAverageMark(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<number>(`${SERVER_API}student/${id}/average`,{headers:headers})

  }

  getEspb(id:number) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<number>(`${SERVER_API}student/${id}/espb`,{headers:headers})

  }


  createStudent(name:string, lastName:string) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.post<Student>(`${SERVER_API}admin/create/student`,{name, lastName}, {headers:headers})

  }

  getUsersPassedExams(id:number){
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<StudentSubject[]>(`${SERVER_API}student/${id}/passed`,{headers:headers})
  }

  getUserNoPassedExams(id:number) {
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<StudentSubject[]>(`${SERVER_API}student/${id}/nopassed`,{headers:headers})
  }

  getOtherSubjects(id:number) {
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Subject[]>(`${SERVER_API}student/${id}/unregisteredexams`,{headers:headers})
  }

  registerSubject(studentId:number, subjectId:number) {
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.post<StudentSubject>(`${SERVER_API}student/studsubj`,{studentId, subjectId}, {headers:headers})
  }

  deleteStudentSubject(studentId:number, subjectId:number){

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})

    return this.http.delete<AssistantSubject>(`${SERVER_API}student/delete/${studentId}/${subjectId}`, {headers: headers})

  }

  getSubjectsStudents(id:number) {
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})

    return this.http.get<StudentSubject[]>(`${SERVER_API}subject/studentsubject/${id}`, {headers: headers})
  }

  rate(studentId:number, subjectId:number, rating:number, review:string) {
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.post<StudentSubject>(`${SERVER_API}student/rate`,{studentId, subjectId, rating, review}, {headers:headers})
  }

}
