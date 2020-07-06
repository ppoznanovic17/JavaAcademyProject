import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import {Subject} from '../../models/subject';
import {SERVER_API} from '../../app.constants';
import {Professor} from '../../models/professor';
import {StudentSubject} from '../../models/student_subject';

@Injectable({
  providedIn: 'root'
})
export class ProfessorService {

  constructor(private http: HttpClient) { }

  getAllProfessors() {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Professor[]>(`${SERVER_API}professor/all`,{headers:headers})

  }

  getAllProfessorsStrings() {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<string[]>(`${SERVER_API}professor/all/strings`,{headers:headers})

  }

  getById(id) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Professor>(`${SERVER_API}professor/${id}`,{headers:headers})

  }

  createProfessor(name:string, lastName:string) {

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.post<Professor>(`${SERVER_API}admin/create/professor`,{name, lastName}, {headers:headers})

  }

  getProfessorsSubject(id:number){
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Subject[]>(`${SERVER_API}professor/${id}/teacher`, {headers:headers})
  }

  getProfessorsNoSubject(id:number){
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.get<Subject[]>(`${SERVER_API}professor/${id}/noteacher`, {headers:headers})
  }

  changeProfessor(professorId:number, subjectId:number){
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})


    return this.http.post<Subject>(`${SERVER_API}professor/changeprof`,{professorId, subjectId}, {headers:headers})
  }


  addPoints(studentId:number, subjectId:number, points:number){
    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})

    return this.http.put<StudentSubject>(`${SERVER_API}professor/addpoints`,{studentId, subjectId, points}, {headers:headers})
  }

  markStudent(studentId:number, subjectId:number){

    let headers = new HttpHeaders({
      'Content-Type': 'application/json',
      'Authorization': sessionStorage.getItem('Authorization')})

    return this.http.put<StudentSubject>(`${SERVER_API}professor/mark`,{studentId, subjectId}, {headers:headers})


  }

}
