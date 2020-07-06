package com.petar.university_service.controller;

import com.petar.university_service.aspect.annotations.Admin;
import com.petar.university_service.aspect.annotations.Logged;
import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.AssistantSubject;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.AddAssistantToSubjectReqDto;
import com.petar.university_service.model.dto.PointsToStudentDto;
import com.petar.university_service.model.dto.StudentSubjectReqDto;
import com.petar.university_service.model.embeddable.AssistantSubjectPK;
import com.petar.university_service.service.AssistantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:4201")
@RestController
@RequestMapping("/assistant")
public class AssistantCtrl {

    @Autowired
    private AssistantService assistantService;

    @Logged
    @GetMapping(path = "/all")
    public ResponseEntity<List<Assistant>> getAll(){
        return new ResponseEntity<>(assistantService.getAllAssistants(), HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/{id}")
    public ResponseEntity<Assistant> getByName(@PathVariable int id){
        Optional<Assistant> a = assistantService.getAssistant(id);
        if(a.isEmpty()){
            return new ResponseEntity<>(null, HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(a.get(), HttpStatus.OK);
    }

    @Logged
    @GetMapping(path = "/{id}/teacher")
    public ResponseEntity<List<AssistantSubject>> getAssistantsSubjects(@PathVariable int id){
        return new ResponseEntity<List<AssistantSubject>>(assistantService.getAssistantsSubjects(id), HttpStatus.OK);

    }

    @Logged
    @GetMapping(path = "/{id}/noteacher")
    public ResponseEntity<List<Subject>> getNoAssistantsSubjects(@PathVariable int id){
        return new ResponseEntity<List<Subject>>(assistantService.getNoAssistantsSubjects(id), HttpStatus.OK);

    }

    @Admin
    @PostMapping(path = "/asssubj")
    public ResponseEntity<AssistantSubject> registerSubject(@RequestBody AddAssistantToSubjectReqDto assistantToSubjectReqDto) {
        int assistantId = assistantToSubjectReqDto.getAssistantId();
        int subjectId = assistantToSubjectReqDto.getSubjectId();
        AssistantSubject as = assistantService.addAssistantToSubject(assistantId, subjectId);
        if (as != null) {
            return new ResponseEntity<AssistantSubject>(as, HttpStatus.OK);
        }
        return new ResponseEntity<AssistantSubject>((AssistantSubject) null, HttpStatus.BAD_REQUEST);
    }

    @com.petar.university_service.aspect.annotations.Assistant
    @PutMapping(path = "/addpoints")
    public ResponseEntity<StudentSubject> addPointsToStudent(@RequestBody PointsToStudentDto pointsToStudentDto){
        StudentSubject ss = assistantService.givePointsToStudent(pointsToStudentDto);
        if(ss == null) {
            return new ResponseEntity<StudentSubject>((StudentSubject) null, HttpStatus.BAD_REQUEST);
        }

        return new ResponseEntity<StudentSubject>(ss, HttpStatus.OK);
    }

    @Admin
    @Transactional
    @DeleteMapping(path = "/delete/{assistantId}/{subjectId}")
    public ResponseEntity<AssistantSubject> deleteAssistantSubject(@PathVariable int assistantId, @PathVariable int subjectId){

        Optional<AssistantSubject> as = assistantService.deleteAssistantSubjectById(assistantId, subjectId);

        if(as.isEmpty()){
            return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
        }
        return new ResponseEntity<AssistantSubject>(as.get(), HttpStatus.OK);
    }

}
