package com.petar.university_service.controller;

import com.petar.university_service.aspect.annotations.Admin;
import com.petar.university_service.aspect.annotations.Logged;
import com.petar.university_service.aspect.annotations.Professor;
import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Student;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.RatingResDto;
import com.petar.university_service.service.StudentService;
import com.petar.university_service.service.SubjectService;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:4201")
@RestController
@RequestMapping("/subject")
public class SubjectCtrl {

    @Autowired
    private SubjectService subjectService;

    @Logged
    @GetMapping(path = "/all")
    public ResponseEntity<List<Subject>> getAll(){
        return new ResponseEntity<>(subjectService.getAllSubjects(), HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/{id}")
    public ResponseEntity<Subject> getByName(@PathVariable int id){
        Optional<Subject> s = subjectService.getSubject(id);
        if(s.isEmpty()){
            return new ResponseEntity<>(null, HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(s.get(), HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/{id}/assistants")
    public ResponseEntity<List<Assistant>> getAssistants(@PathVariable int id){
        List<Assistant> a = subjectService.getAssistants(id);
        if(a.isEmpty()){
            return new ResponseEntity<>(null, HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(a , HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/{id}/students")
    public ResponseEntity<List<Student>> getStudents(@PathVariable int id){
        List<Student> s = subjectService.getStudents(id);
        if(s.isEmpty()){
            return new ResponseEntity<>(null, HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(s , HttpStatus.OK);
    }

    @Admin
    @GetMapping( path = "/ratings/{id}")
    public ResponseEntity<List<RatingResDto>> subjectRatings(@PathVariable int id){
        return new ResponseEntity<List<RatingResDto>>(subjectService.getRatings(id), HttpStatus.OK);
    }

    @Admin
    @GetMapping( path = "/avgrate/{id}")
    public ResponseEntity<Double> returnSubjectAvgRate( @PathVariable int id){
        return new ResponseEntity<Double>(subjectService.averageRating(id), HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/studentsubject/{id}")
    public ResponseEntity<List<StudentSubject>> getStudentSubjectFromSubjectId(@PathVariable int id){
        List<StudentSubject> ss = subjectService.getStudentSubjectBySubjectId(id);
        return new ResponseEntity<List<StudentSubject>>(ss, HttpStatus.OK);
    }
}
