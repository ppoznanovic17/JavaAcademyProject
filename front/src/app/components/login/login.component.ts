import { Component, OnInit } from '@angular/core';
import {RoleService} from '../../services/role.service';
import {AuthService} from '../../services/auth/auth.service';
import {ID, LASTNAME, NAME, ROLE} from '../../app.constants';
import {Router} from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  username:string
  password:string
  role:string

  roles:String[] = []

  constructor(private roleService: RoleService,
              private authService: AuthService,
              private router:Router) { }

  ngOnInit() {
    this.getRoles()
  }

  getRoles(){
    this.roleService.getRoles().subscribe(
      res => {
        this.roles = res
      }, error => {
        console.log(error);
      }
    )
  }

  login(){
    console.log(this.role);
    this.authService.login(this.username, this.password, this.role).subscribe(
      res => {
        if(res == null){
          console.log("error.");
          return;
        }
        let r = res.role
        sessionStorage.setItem('Authorization', res.token)
        sessionStorage.setItem(NAME, res.name)
        sessionStorage.setItem(LASTNAME, res.lastName)
        sessionStorage.setItem(ROLE, res.role)


        this.authService.getUserIdByName(res.name, res.lastName, res.role).subscribe(
          res => {
            sessionStorage.setItem(ID, res.toString())

            if( r.toLowerCase() == 'admin'){
              this.router.navigate(['home/admin'])
            }
            if( r.toLowerCase() == 'student'){
              this.router.navigate(['home/student'])
            }
            if( r.toLowerCase() == 'professor'){
              this.router.navigate(['home/professor'])
            }
            if( r.toLowerCase() == 'assistant'){
              this.router.navigate(['home/assistant'])
            }

          }, error => {
            console.log(error);
          }
        )
      }, error => {
        console.log(error);
      }
    )
  }

}
