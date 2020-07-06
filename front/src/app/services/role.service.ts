import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from "@angular/common/http";
import {SERVER_API} from '../app.constants';

@Injectable({
  providedIn: 'root'
})
export class RoleService {

  constructor(private http:HttpClient) { }

  getRoles(){

    let headers = new HttpHeaders({
      'Content-Type': 'application/json'})

    let options = { headers: headers };

    return this.http.get<String[]>(`${SERVER_API}role/roles`,{headers:headers})

  }
}
