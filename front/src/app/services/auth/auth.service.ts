import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {ID, LASTNAME, NAME, ROLE, SERVER_API} from '../../app.constants';
import {map} from 'rxjs/operators';
import {LoginResDto} from '../../models/dto/login_res_dto';
import {User} from '../../models/user';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(private http: HttpClient) {
  }

  login(username, password, role) {
    return this.http.post<LoginResDto>(`${SERVER_API}auth/login`, {
      username,
      password,
      role
    })
  }

  getUserIdByName(name, lastName, role){
    return this.http.get<number>(`${SERVER_API}auth/${name}/${lastName}/${role}`)
  }

  logout () {
    sessionStorage.removeItem(ID)
    sessionStorage.removeItem(NAME)
    sessionStorage.removeItem(LASTNAME)
    sessionStorage.removeItem('Authorization')
    sessionStorage.removeItem(ROLE)

  }

}
