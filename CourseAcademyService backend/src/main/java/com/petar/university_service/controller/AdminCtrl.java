package com.petar.university_service.controller;

import com.petar.university_service.aspect.annotations.Admin;
import com.petar.university_service.dao.AssistantDao;
import com.petar.university_service.dao.ProfessorDao;
import com.petar.university_service.dao.StudentDao;
import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Professor;
import com.petar.university_service.model.Student;
import com.petar.university_service.model.Subject;
import com.petar.university_service.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "http://localhost:4201")
@RestController
@RequestMapping("/admin")
public class AdminCtrl {

    @Autowired
    private AdminService adminService;



    public AdminCtrl() {

    }

    @Admin
    @PostMapping(path = "/create/student")
    public ResponseEntity<Student> createStudent(@RequestBody Student s){
        Student student = adminService.createStudent(s);
        System.out.println(student);
        if(student!= null){
            return new ResponseEntity(student, HttpStatus.CREATED);
        }else {
            return new ResponseEntity<Student>((Student) null, HttpStatus.BAD_REQUEST);
        }

    }

    @Admin
    @PostMapping(path = "/create/assistant")
    public ResponseEntity<Assistant> createAssistant(@RequestBody Assistant a){
        Assistant assistant = adminService.createAssistant(a);
        System.out.println(assistant);
        if(assistant!= null){
            return new ResponseEntity<Assistant>(assistant, HttpStatus.CREATED);
        }else {
            return new ResponseEntity<Assistant>((Assistant) null, HttpStatus.BAD_REQUEST);
        }



    }

    @Admin
    @PostMapping(path = "/create/professor")
    public ResponseEntity<Professor> createProfessor(@RequestBody Professor p){

        Professor professor = adminService.createProfessor(p);
        System.out.println(professor);
        if(professor!= null){
            return new ResponseEntity<Professor>(professor, HttpStatus.CREATED);
        }else {
            return new ResponseEntity<Professor>((Professor) null, HttpStatus.BAD_REQUEST);
        }

    }

    @Admin
    @PostMapping(path = "/create/subject")
    public ResponseEntity<Subject> createSubject(@RequestBody Subject p){

        Subject subject = adminService.createSubject(p);
        System.out.println(subject);
        return new ResponseEntity<>(subject, HttpStatus.OK);
    }

}
