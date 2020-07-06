import { Component, OnInit } from '@angular/core';
import {Professor} from '../../models/professor';
import {Subject} from '../../models/subject';
import {Assistant} from '../../models/assistant';
import {ProfessorService} from '../../services/professor/professor.service';
import {ActivatedRoute, Params} from '@angular/router';
import {AssistantService} from '../../services/assistant/assistant.service';
import {AssistantSubject} from '../../models/assistant_subject';

@Component({
  selector: 'app-admin-assistant',
  templateUrl: './admin-assistant.component.html',
  styleUrls: ['./admin-assistant.component.css']
})
export class AdminAssistantComponent implements OnInit {

  assistantId:number
  assistant: Assistant = new Assistant()
  assistantSubjects:AssistantSubject[] = []
  otherSubjects: Subject[] = []

  constructor(private assistantService: AssistantService,
              private route: ActivatedRoute) { }

  ngOnInit() {
    this.route.params.forEach((params: Params) => {
      this.assistantId = Number.parseInt(params['id'])
    })

    this.refresh()
  }

  refresh(){
    this.getAssistant()
    this.loadAssistantSubjects()
    this.loadOtherSubjects()
  }

  getAssistant(){
    this.assistantService.getAssistant(this.assistantId).subscribe(
      res => {
        this.assistant = res
        console.log(res);
      }, error => {
        console.log(error);
      }
    )
  }

  loadAssistantSubjects() {
    this.assistantService.getAssistantsSubjects(this.assistantId).subscribe(
      res => {
        this.assistantSubjects = res
        console.log( res);
      }, error => {
        console.log(error);
      }
    )
  }

  loadOtherSubjects() {
    this.assistantService.getAssistantsNoSubjects(this.assistantId).subscribe(
      res => {
        this.otherSubjects = res
        console.log(res);
      }, error => {
        console.log(error);
      }
    )
  }

  addAssistant(subjectId:number){
    this.assistantService.addAssistantToSubject(this.assistantId, subjectId).subscribe(
      res => {
        if(res != null) this.refresh()
      }, error => {
        alert('Error.')
      }
    )
  }

  deleteFromSubject(subjectId:number){
    this.assistantService.deleteAssistantSubject(this.assistantId, subjectId).subscribe(
      res => {
      this.refresh()
      }, error => {
        console.log(error);
      }
    )
  }

}
