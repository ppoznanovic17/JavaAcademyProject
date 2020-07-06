import { Component, OnInit } from '@angular/core';
import {Assistant} from '../../models/assistant';
import {AssistantSubject} from '../../models/assistant_subject';
import {AssistantService} from '../../services/assistant/assistant.service';
import {ActivatedRoute, Router} from '@angular/router';
import {ID} from '../../app.constants';

@Component({
  selector: 'app-assistant-home',
  templateUrl: './assistant-home.component.html',
  styleUrls: ['./assistant-home.component.css']
})
export class AssistantHomeComponent implements OnInit {

  assistantId:number
  assistant:Assistant

  assistantSubject:AssistantSubject[] = []


  constructor(
    private assistantService:AssistantService,
    private router: Router
  ) { }

  ngOnInit() {
      this.refresh()
  }

  refresh(){
    this.assistantId = Number.parseInt(sessionStorage.getItem(ID))
    this.getAssistantsSubject()
    this.getAssistant()
  }

  getAssistant() {
    this.assistantService.getAssistant(Number.parseInt(sessionStorage.getItem(ID))).subscribe(
      res => {
        this.assistant = res
      }, error => {
        console.log(error);
      }
    )
  }

  getAssistantsSubject() {
    this.assistantService.getAssistantsSubjects(Number.parseInt(sessionStorage.getItem(ID))).subscribe(
      res => {
        this.assistantSubject = res
        console.log(res);
      }, error => {
        console.log(error);
      }
    )
  }

  go(id:number){
    this.router.navigate([`/assistant/subject/${id}`])
  }

}
