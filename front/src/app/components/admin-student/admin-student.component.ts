import { Component, OnInit } from '@angular/core';
import {Assistant} from '../../models/assistant';
import {AssistantSubject} from '../../models/assistant_subject';
import {Subject} from '../../models/subject';
import {AssistantService} from '../../services/assistant/assistant.service';
import {ActivatedRoute, Params} from '@angular/router';
import {StudentSubject} from '../../models/student_subject';
import {StudentService} from '../../services/student/student.service';

@Component({
  selector: 'app-admin-student',
  templateUrl: './admin-student.component.html',
  styleUrls: ['./admin-student.component.css']
})
export class AdminStudentComponent implements OnInit {

  studentId:number
  student: Assistant = new Assistant()
  studentSubjectsPassed:StudentSubject[] = []
  studentSubjectsNoPassed: StudentSubject[] = []
  otherSubjects: Subject[] = []
  espb: number
  average: number

  constructor(private studentService: StudentService,
              private route: ActivatedRoute) { }

  ngOnInit() {
    this.route.params.forEach((params: Params) => {
      this.studentId = Number.parseInt(params['id'])
    })

    this.refresh()
  }

  refresh(){
    this.getStudent()
    this.loadPassed()
    this.loadNoPassed()
    this.loadOther()
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

  loadOther() {
    this.studentService.getOtherSubjects(this.studentId).subscribe(
      res => {
        this.otherSubjects = res
        //console.log(res);
      }, error => {
        console.log(error);
      }
    )
  }

  addSubjectToStudent(subjectId:number){
    this.studentService.registerSubject(this.studentId, subjectId).subscribe(
      res => {
        if(res != null) this.refresh()
      }, error => {
        alert('Error.')
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

  deleteSubject(subjectId:number){
    this.studentService.deleteStudentSubject(this.studentId, subjectId).subscribe(
      res => {
        console.log(res);
        this.refresh()
      }, error => {
        console.log(error);
      }
    )
  }

}
