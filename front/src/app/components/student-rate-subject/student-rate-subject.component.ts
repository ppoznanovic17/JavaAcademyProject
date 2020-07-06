import { Component, OnInit } from '@angular/core';
import {StudentService} from '../../services/student/student.service';
import {ActivatedRoute, Params, Router} from '@angular/router';
import {Subject} from '../../models/subject';
import {Student} from '../../models/student';
import {SubjectService} from '../../services/subject/subject.service';
import {ID} from '../../app.constants';

@Component({
  selector: 'app-student-rate-subject',
  templateUrl: './student-rate-subject.component.html',
  styleUrls: ['./student-rate-subject.component.css']
})
export class StudentRateSubjectComponent implements OnInit {

  studentId:number
  subjectId:number
  rating = 3
  review:string

  subject: Subject
  student:Student


  constructor(private studentService:StudentService,
              private subjectService:SubjectService,
              private route: ActivatedRoute,
              private router:Router) { }

  ngOnInit() {
    this.refresh()
  }

  refresh() {
    this.getSubjectId()
    this.getStudentId()
    this.getSubject()
    this.getStudent()
  }

  getStudentId(){
    this.studentId = Number.parseInt(sessionStorage.getItem(ID))
  }

  getSubjectId() {
    this.route.params.forEach((params: Params) => {
      this.subjectId = Number.parseInt(params['id'])
    })
  }

  getStudent() {
    this.studentService.getStudent(this.studentId).subscribe(
      res => {
        this.student = res
      }, error => {
        console.log(error);
      }
    )
  }

  getSubject() {
    this.subjectService.getSubject(this.subjectId).subscribe(
      res => {
        this.subject = res
      }, error => {
        console.log(error);
      }
    )
  }


  rate(){
    this.studentService.rate(this.studentId, this.subjectId, this.rating, this.review).subscribe(
      res => {
        this.router.navigate(['home/student'])
      }, error => {

      }
    )
  }
}
