import { Component, OnInit } from '@angular/core';
import {Subject} from '../../models/subject';
import {StudentSubject} from '../../models/student_subject';
import {SubjectService} from '../../services/subject/subject.service';
import {ProfessorService} from '../../services/professor/professor.service';
import {ActivatedRoute, Params} from '@angular/router';
import {AssistantService} from '../../services/assistant/assistant.service';

@Component({
  selector: 'app-assistant-subject',
  templateUrl: './assistant-subject.component.html',
  styleUrls: ['./assistant-subject.component.css']
})
export class AssistantSubjectComponent implements OnInit {

  subjectId:number
  subject:Subject

  studentSubject:StudentSubject[] = []
  markedStudents: StudentSubject[] = []
  otherStudents: StudentSubject[] = []


  constructor(private subjectService: SubjectService,
              private assistantService: AssistantService,
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
        console.log(res);
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

  addPoints(studentId:number, points){
      this.assistantService.addPoints(studentId, this.subjectId, points).subscribe(
        res => {
          this.otherStudents = []
          this.markedStudents = []
          this.refresh()
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
