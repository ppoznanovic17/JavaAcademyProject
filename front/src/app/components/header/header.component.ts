import { Component, OnInit } from '@angular/core';
import {AuthService} from '../../services/auth/auth.service';
import {Router} from '@angular/router';
import {LASTNAME, NAME, ROLE} from '../../app.constants';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  name:string
  lastname:string

  constructor(private authService: AuthService,
              private router: Router) { }

  ngOnInit() {
    this.name = sessionStorage.getItem(NAME)
    this.lastname = sessionStorage.getItem(LASTNAME)
  }

  logout(){
    this.authService.logout()
  }

  goHome(){
    let role = sessionStorage.getItem(ROLE).toLowerCase()
    this.router.navigate([`home/${role}`])
  }

  printLastName(lastname:string){
    if(lastname === 'admin'){
      return ''
    }
    return lastname
  }

}
