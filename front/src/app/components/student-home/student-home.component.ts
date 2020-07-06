import { Component, OnInit } from '@angular/core';
import {Assistant} from '../../models/assistant';
import {StudentSubject} from '../../models/student_subject';
import {Subject} from '../../models/subject';
import {StudentService} from '../../services/student/student.service';
import {ActivatedRoute, Router} from '@angular/router';
import {ID} from '../../app.constants';

@Component({
  selector: 'app-student-home',
  templateUrl: './student-home.component.html',
  styleUrls: ['./student-home.component.css']
})
export class StudentHomeComponent implements OnInit {

  studentId:number
  student: Assistant = new Assistant()
  studentSubjectsPassed:StudentSubject[] = []
  studentSubjectsNoPassed: StudentSubject[] = []
  otherSubjects: Subject[] = []
  espb: number
  average: number

  constructor(private studentService: StudentService,
              private router: Router) { }

  ngOnInit() {
    this.studentId = Number.parseInt(sessionStorage.getItem(ID))
    this.refresh()
  }

  refresh(){
    this.getStudent()
    this.loadPassed()
    this.loadNoPassed()
    this.averageMark()
    this.espbPoints()
  }


  getStudent(){
    this.studentService.getStudent(this.studentId).subscribe(
      res => {
        this.student = res
        //console.log(res);
      }, error => {
        console.log(error);
      }
    )
  }


  loadPassed() {
    this.studentService.getUsersPassedExams(this.studentId).subscribe(
      res => {
        this.studentSubjectsPassed = res
        //console.log( res);
      }, error => {
        console.log(error);
      }
    )
  }

  loadNoPassed() {
    this.studentService.getUserNoPassedExams(this.studentId).subscribe(
      res => {
        this.studentSubjectsNoPassed = res
        //console.log(res);
      }, error => {
        console.log(error);
      }
    )
  }

  averageMark(){
    this.studentService.getAverageMark(this.studentId).subscribe(
      res => {
        this.average = res
      }, error => {
        console.log(error);
      }
    )
  }

  espbPoints(){
    this.studentService.getEspb(this.studentId).subscribe(
      res => {
        this.espb = res
      }, error => {
        console.log(error);
      }
    )
  }

  go(id:number) {
    this.router.navigate([`student/rate/${id}`])
  }

}
