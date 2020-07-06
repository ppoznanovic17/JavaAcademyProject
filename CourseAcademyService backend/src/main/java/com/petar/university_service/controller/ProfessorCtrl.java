package com.petar.university_service.controller;

import com.petar.university_service.aspect.annotations.Admin;
import com.petar.university_service.aspect.annotations.Logged;
import com.petar.university_service.model.Professor;
import com.petar.university_service.model.Student;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.ChangeProfessorReqDto;
import com.petar.university_service.model.dto.PointsToStudentDto;
import com.petar.university_service.model.dto.StudentSubjectReqDto;
import com.petar.university_service.service.ProfessorService;
import com.petar.university_service.service.StudentService;
import lombok.extern.flogger.Flogger;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:4201")
@RestController
@RequestMapping("/professor")
public class ProfessorCtrl {

    @Autowired
    private ProfessorService professorService;

    @Logged
    @GetMapping(path = "/all")
    public ResponseEntity<List<Professor>> getAll(){
        return new ResponseEntity<>(professorService.getAllProfessors(), HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/all/strings")
    public ResponseEntity<List<String>> getAllStrings(){
        List<String> professors = new ArrayList<>();
        for(Professor p: professorService.getAllProfessors()){
            professors.add(p.getId() + " " + p.getLastName() + " " + p.getLastName());
        }
        return new ResponseEntity<>(professors, HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/{id}")
    public ResponseEntity<Professor> getById(@PathVariable int id){
        Optional<Professor> p = professorService.getProfessor(id);
        if(p.isEmpty()){
            return new ResponseEntity<>(null, HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(p.get(), HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/{id}/teacher")
    public ResponseEntity<List<Subject>> getNoPassedExams(@PathVariable int id){
        return new ResponseEntity<List<Subject>>(professorService.getProfessorsSubjects(id), HttpStatus.OK);

    }

    @Logged
    @GetMapping(path = "/{id}/noteacher")
    public ResponseEntity<List<Subject>> getUnregisteredExams(@PathVariable int id){
        return new ResponseEntity<List<Subject>>(professorService.getNoProfessorsSubjects(id), HttpStatus.OK);

    }

    @Admin
    @PostMapping(path = "/changeprof")
    public ResponseEntity<Subject> changeSubjectProfessor(@RequestBody ChangeProfessorReqDto changeProfessorReqDto){
        Subject s = professorService.changeProfessor(changeProfessorReqDto.getProfessorId(), changeProfessorReqDto.getSubjectId());
        if(s == null){
            return new ResponseEntity<Subject>((Subject) null, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<Subject>(s, HttpStatus.OK);
    }

    @com.petar.university_service.aspect.annotations.Professor
    @PutMapping(path = "/addpoints")
    public ResponseEntity<StudentSubject> addPointsToStudent(@RequestBody PointsToStudentDto pointsDto){
        StudentSubject ss = professorService.givePointsToStudent(pointsDto);
        if(ss == null){
            return new ResponseEntity<StudentSubject>((StudentSubject) null, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<StudentSubject>(ss, HttpStatus.OK);
    }

    @com.petar.university_service.aspect.annotations.Professor
    @PutMapping(path = "/mark")
    public ResponseEntity<StudentSubject> rateStudent(@RequestBody StudentSubjectReqDto studentSubjectReqDto){
        StudentSubject ss = professorService.rate(studentSubjectReqDto);
        if(ss == null){
            return new ResponseEntity<StudentSubject>((StudentSubject) null, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<StudentSubject>(ss, HttpStatus.OK);
    }

}
