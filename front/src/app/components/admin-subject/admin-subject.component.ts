import { Component, OnInit } from '@angular/core';
import {Subject} from '../../models/subject';
import {Student} from '../../models/student';
import {Professor} from '../../models/professor';
import {Assistant} from '../../models/assistant';
import {SubjectService} from '../../services/subject/subject.service';
import {StudentService} from '../../services/student/student.service';
import {AssistantService} from '../../services/assistant/assistant.service';
import {ProfessorService} from '../../services/professor/professor.service';
import {ActivatedRoute, Params, Route} from '@angular/router';
import {RatingResDto} from '../../models/dto/rating_res_dto';

@Component({
  selector: 'app-admin-subject',
  templateUrl: './admin-subject.component.html',
  styleUrls: ['./admin-subject.component.css']
})
export class AdminSubjectComponent implements OnInit {

  subjectId:number

  subject:Subject
  students:Student[] = []
  professors:Professor[] = []
  assistants:Assistant[] = []

  avgRating:number
  ratings:RatingResDto[]

  constructor(private subjectService: SubjectService,
              private studentService: StudentService,
              private assistantService: AssistantService,
              private professorService: ProfessorService,
              private route: ActivatedRoute) { }

  ngOnInit() {

    this.route.params.forEach((params: Params) => {
      this.subjectId = Number.parseInt(params['id'])
    })

    this.refresh()
  }

  refresh(){
    this.getSubject()
    this.getAssistants()
    this.getStudents()
    this.getAverage()
    this.getRatings()
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

  getAssistants() {
    this.subjectService.getSubjectAssistants(this.subjectId).subscribe(
      res => {
        this.assistants = res
      }, error => {
        console.log(error);
      }
    )
  }

  getStudents() {
    this.subjectService.getSubjectStudents(this.subjectId).subscribe(
      res => {
        this.students = res
      }, error => {
        console.log(error);
      }
    )
  }

  getRatings(){
    this.subjectService.getReviews(this.subjectId).subscribe(
      res => {
        this.ratings = res
      }, error => {
        console.log(error);
      }
    )
  }

  getAverage() {
    this.subjectService.getAverage(this.subjectId).subscribe(
      res => {
        this.avgRating = res
      }, error => {
        console.log(error);
      }
    )
  }

}
