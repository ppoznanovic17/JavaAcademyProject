import { Component, OnInit } from '@angular/core';
import {ProfessorService} from '../../services/professor/professor.service';
import {ID} from '../../app.constants';
import {Professor} from '../../models/professor';
import {Subject} from '../../models/subject';
import {Router} from '@angular/router';

@Component({
  selector: 'app-professor-home',
  templateUrl: './professor-home.component.html',
  styleUrls: ['./professor-home.component.css']
})
export class ProfessorHomeComponent implements OnInit {

  professorId:number
  professor:Professor

  subjects: Subject[] = []

  constructor(private professorService: ProfessorService,
              private router:Router) { }

  ngOnInit() {
    this.refresh()

  }

  refresh(){
    this.loadProfessorId()
    this.loadProfessor()
    this.loadProfessorSubject()
  }

  loadProfessorId(){
    this.professorId = Number.parseInt(sessionStorage.getItem(ID))
  }

  loadProfessor(){
    this.professorService.getById(this.professorId).subscribe(
      res => {
        this.professor = res
      }, error => {
        console.log(error);
      }
    )
  }

  loadProfessorSubject(){
    this.professorService.getProfessorsSubject(this.professorId).subscribe(
      res => {
        this.subjects = res
      }, error => {
        console.log(error);
      }
    )
  }

  goToSubject(id:number){
    this.router.navigate([`/professor/subject/${id}`])
  }

}
