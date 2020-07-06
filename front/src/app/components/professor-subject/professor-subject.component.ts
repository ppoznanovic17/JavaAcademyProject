import { Component, OnInit } from '@angular/core';
import {Subject} from '../../models/subject';
import {StudentSubject} from '../../models/student_subject';
import {SubjectService} from '../../services/subject/subject.service';
import {ActivatedRoute, Params} from '@angular/router';
import {ProfessorService} from '../../services/professor/professor.service';

@Component({
  selector: 'app-professor-subject',
  templateUrl: './professor-subject.component.html',
  styleUrls: ['./professor-subject.component.css']
})
export class ProfessorSubjectComponent implements OnInit {

  subjectId:number
  subject:Subject

  studentSubject:StudentSubject[] = []

  markedStudents: StudentSubject[] = []
  otherStudents: StudentSubject[] = []


  constructor(private subjectService: SubjectService,
              private professorService: ProfessorService,
              private route: ActivatedRoute) { }

  ngOnInit() {
    this.getSubjectId()

    this.refresh()
  }

  refresh() {
    this.getSubject()
    this.loadStudentSubject()
  }

  getSubjectId(){
    this.route.params.forEach((params: Params) => {
      this.subjectId = Number.parseInt(params['id'])
    })
  }

  getSubject(){
    this.subjectService.getSubject(this.subjectId).subscribe(
      res => {
        this.subject = res

      }, error => {
        console.log(error);
      }
    )
  }

  loadStudentSubject(){
    this.subjectService.getStudentSubjectBySubjectId(this.subjectId).subscribe(
      res => {
        this.studentSubject = res
        for(let s of res){
          if(s.mark<6){
            this.otherStudents.push(s)
          }else{
            this.markedStudents.push(s)
          }
        }
      },error => {
        console.log(error);
      }
    )
  }

  addPoints(studentId:number, subjectId:number, professorPoints:number){
      this.professorService.addPoints(studentId, subjectId, professorPoints).subscribe(
        res => {
         alert('Successfully saved.')
        }, error => {

        }
      )
  }

  markStudent(studentId:number, subjectId:number){
      this.professorService.markStudent(studentId, subjectId).subscribe(
        res => {
          alert('Successfully marked.')
          this.markedStudents = []
          this.otherStudents = []
          this.loadStudentSubject()
        }, error => {
          console.log(error);
        }
      )
  }

  printMark(x:number){
    if(x == 0) return '/'
    return x
  }

}
