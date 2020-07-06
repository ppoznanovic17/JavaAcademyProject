import { Component, OnInit } from '@angular/core';
import {Professor} from '../../models/professor';
import {Subject} from '../../models/subject';
import {ProfessorService} from '../../services/professor/professor.service';
import {ActivatedRoute, Params} from '@angular/router';

@Component({
  selector: 'app-admin-professor',
  templateUrl: './admin-professor.component.html',
  styleUrls: ['./admin-professor.component.css']
})
export class AdminProfessorComponent implements OnInit {

  professorId:number
  professor: Professor
  professorSubjects:Subject[] = []
  otherSubjects: Subject[] = []

  constructor(private professorService: ProfessorService,
              private route: ActivatedRoute) { }

  ngOnInit() {
    this.route.params.forEach((params: Params) => {
      this.professorId = Number.parseInt(params['id'])
    })

    this.refresh()
  }

  refresh(){
    this.getProfessor()
    this.loadOtherSubjects()
    this.loadProfessorsSubjects()
  }

  getProfessor(){
    this.professorService.getById(this.professorId).subscribe(
      res => {
        this.professor = res
      }, error => {
        console.log(error);
      }
    )
  }

  loadProfessorsSubjects() {
    this.professorService.getProfessorsSubject(this.professorId).subscribe(
      res => {
        this.professorSubjects = res
      }, error => {
        console.log(error);
      }
    )
  }

  loadOtherSubjects() {
    this.professorService.getProfessorsNoSubject(this.professorId).subscribe(
      res => {
        this.otherSubjects = res
      }, error => {
        console.log(error);
      }
    )
  }

  setProfessor(subjectId:number){
    this.professorService.changeProfessor(this.professorId, subjectId).subscribe(
      res => {
        this.refresh()
      }, error => {
        alert('Error.')
      }
    )
  }

}
