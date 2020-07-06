import { Component, OnInit } from '@angular/core';
import {Student} from '../../models/student';
import {Professor} from '../../models/professor';
import {Assistant} from '../../models/assistant';
import {Subject} from '../../models/subject';
import {StudentService} from '../../services/student/student.service';
import {ProfessorService} from '../../services/professor/professor.service';
import {AssistantService} from '../../services/assistant/assistant.service';
import {SubjectService} from '../../services/subject/subject.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-admin-home',
  templateUrl: './admin-home.component.html',
  styleUrls: ['./admin-home.component.css']
})
export class AdminHomeComponent implements OnInit {

  students:Student[] = []
  professors: Professor[] = []
  assistants:Assistant[] = []
  subjects: Subject[] = []

  //create subject
  professorsStrings:string[] = []
  subjectName:string
  espb = 0
  professor: Professor
  professorId: number
  semester = 0
  maxProf = 0
  maxAss = 0

  //create professor
  professorName:string
  professorLastName:string

  //create assistant
  assistantName:string
  assistantLastName:string

  //create student
  studentName:string
  studentLastName:string


  constructor(private studentService: StudentService,
              private professorService: ProfessorService,
              private assistantService: AssistantService,
              private subjectService:SubjectService,
              private router:Router) { }

  ngOnInit() {
    this.refresh()
  }

  refresh(){
    this.getAllAssistants()
    this.getAllProfessors()
    this.getAllStudents()
    this.getAllSubjects()
    this.getProfessorStrings()
  }

  createAssistant(){
    this.assistantService.createAssistant(this.assistantName, this.assistantLastName).subscribe(
      res => {
        console.log(res);
        this.assistantName = ''
        this.assistantLastName = ''
        this.refresh()
        alert('Successful.')
      }, error => {
        alert('Error.')
      }
    )
  }

  createStudent(){
    this.studentService.createStudent(this.studentName, this.studentLastName).subscribe(
      res => {
        console.log(res);
        this.studentName = ''
        this.studentLastName = ''
        this.refresh()
        alert('Successful.')
      }, error => {
        alert('Error.')
      }
    )
  }

  createSubject() {
    if(this.maxProf + this.maxAss != 100){
      alert("Zbir bodova pri ocenjivanju mora da bude 100")
      return
    }
      this.professorService.getById(this.professorId).subscribe(
        res => {
          this.professor = res

          this.subjectService.createSubject(this.subjectName, this.espb, this.semester, this.maxAss, this.maxProf, res).subscribe(
            res => {
              console.log(res)
              this.maxAss = 20
              this.maxProf = 20
              this.subjectName = ''
              this.espb = 1
              this.semester = 1
              alert('Successful.')
              this.refresh()
            }, error => {
              console.log(error);
            }
          )
        }, error => {
          alert('Error.')
          console.log(error);
        }
      )
  }

  createProfessor(){
    this.professorService.createProfessor(this.professorName, this.professorLastName).subscribe(
      res => {
        console.log(res);
        this.professorLastName = ''
        this.professorName = ''
        this.refresh()
        alert('Successful.')
      }, error => {
        alert('Error.')
      }
    )
  }

  getProfessorStrings(){
    this.professorService.getAllProfessorsStrings().subscribe(
      res => {
        this.professorsStrings = res
      }, error => {
        console.log(error);
      }
    )
  }

  getAllSubjects(){
    this.subjectService.getAllSubjects().subscribe(
      res => {
        this.subjects = res
      }, error => {
        console.log(error);
      }
    )
  }

  getAllStudents(){
    this.studentService.getAllStudents().subscribe(
      res => {
        this.students = res
      }, error => {
        console.log(error);
      }
    )
  }

  getAllProfessors(){
    this.professorService.getAllProfessors().subscribe(
      res => {
        this.professors = res
      }, error => {
        console.log(error);
      }
    )
  }

  getAllAssistants() {
    this.assistantService.geAllAssistants().subscribe(
      res => {
        this.assistants = res
      }, error => {
        console.log(error);
      }
    )
  }

  go(id:number, role:string){
    this.router.navigate([`admin/${role.toLowerCase()}/${id}`])
  }

}
