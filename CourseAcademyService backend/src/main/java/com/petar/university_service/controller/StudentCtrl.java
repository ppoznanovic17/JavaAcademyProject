package com.petar.university_service.controller;

import com.petar.university_service.aspect.annotations.Admin;
import com.petar.university_service.aspect.annotations.Logged;
import com.petar.university_service.model.Professor;
import com.petar.university_service.model.Student;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.RateSubjectReqDto;
import com.petar.university_service.model.dto.StudentSubjectReqDto;
import com.petar.university_service.model.embeddable.StudentSubjectPK;
import com.petar.university_service.service.StudentService;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:4201")
@RestController
@RequestMapping("/student")
public class StudentCtrl {

    @Autowired
    private StudentService studentService;

    @Logged
    @GetMapping(path = "/all")
    public ResponseEntity<List<Student>> getAll(){
        return new ResponseEntity<>(studentService.getAllStudents(), HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/{id}")
    public ResponseEntity<Student> getByName(@PathVariable int id){
        Optional<Student> s = studentService.getStudent(id);
        if(s.isEmpty()){
            return new ResponseEntity<>(null, HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(s.get(), HttpStatus.OK);
    }

    @com.petar.university_service.aspect.annotations.Student
    @GetMapping(path = "/{id}/passed")
    public ResponseEntity<List<StudentSubject>> getPassedExams(@PathVariable int id){
        return new ResponseEntity<List<StudentSubject>>(studentService.getPassedExams(id), HttpStatus.OK);

    }

    @com.petar.university_service.aspect.annotations.Student
    @GetMapping(path = "/{id}/nopassed")
    public ResponseEntity<List<StudentSubject>> getNoPassedExams(@PathVariable int id){
        return new ResponseEntity<List<StudentSubject>>(studentService.getNoPassedExams(id), HttpStatus.OK);

    }

    @com.petar.university_service.aspect.annotations.Student
    @GetMapping(path = "/{id}/unregisteredexams")
    public ResponseEntity<List<Subject>> getUnregisteredExams(@PathVariable int id){
        return new ResponseEntity<List<Subject>>(studentService.getUnregisteredExams(id), HttpStatus.OK);

    }

    @com.petar.university_service.aspect.annotations.Student
    @GetMapping(path = "/{id}/average")
    public ResponseEntity<Double> averageMark(@PathVariable int id){
        int sum = 0;
        int cnt = 0;
        for(StudentSubject ss: studentService.getPassedExams(id)){
            sum += ss.getMark();
            cnt++;
        }
        return new ResponseEntity<Double>((sum*1.0)/cnt, HttpStatus.OK);

    }

    @com.petar.university_service.aspect.annotations.Student
    @GetMapping(path = "/{id}/espb")
    public ResponseEntity<Integer> espb(@PathVariable int id){
        int espb = 0;
        for(StudentSubject ss: studentService.getPassedExams(id)){
            espb += ss.getSubject().getEspb();
        }
        return new ResponseEntity<Integer>(espb, HttpStatus.OK);

    }

    @Admin
    @PostMapping(path = "/studsubj")
    public ResponseEntity<StudentSubject> registerSubject(@RequestBody StudentSubjectReqDto studentSubjectReqDto) {
        int studentId = studentSubjectReqDto.getStudentId();
        int subjectId = studentSubjectReqDto.getSubjectId();
        StudentSubject ss = studentService.registerSubject(studentId, subjectId);
        if (ss != null) {
            return new ResponseEntity<StudentSubject>(ss, HttpStatus.OK);
        }
        return new ResponseEntity<StudentSubject>((StudentSubject) null, HttpStatus.BAD_REQUEST);
    }

    @com.petar.university_service.aspect.annotations.Student
    @PostMapping(path = "/rate")
    public ResponseEntity<StudentSubject> rateSubject(@RequestBody RateSubjectReqDto rsDto) {

        StudentSubject ss = studentService.rateSubject(rsDto);
        if (ss != null) {
            return new ResponseEntity<StudentSubject>(ss, HttpStatus.OK);
        }
        return new ResponseEntity<StudentSubject>((StudentSubject) null, HttpStatus.BAD_REQUEST);
    }

    @com.petar.university_service.aspect.annotations.Student
    @GetMapping( path = "/rate/{studentId}/{subjectId}")
    public ResponseEntity<Boolean> hasRated(@PathVariable int studentId, @PathVariable int subjectId){
        return new ResponseEntity<Boolean>(studentService.studentHasRateSubject(studentId, subjectId), HttpStatus.OK);
    }

    @Admin
    @Transactional
    @DeleteMapping(path = "/delete/{studentId}/{subjectId}")
    public ResponseEntity<StudentSubject> deleteStudentSubjectById(@PathVariable int studentId, @PathVariable int subjectId){

        Optional<StudentSubject> ss = studentService.deleteStudentSubjectById(studentId, subjectId);
        if(ss.isEmpty()){
            return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<StudentSubject>(ss.get(), HttpStatus.OK);
    }
}
