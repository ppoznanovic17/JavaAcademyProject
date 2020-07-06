package com.petar.university_service.service.impl;

import com.petar.university_service.dao.AssistantSubjectDao;
import com.petar.university_service.dao.StudentSubjectDao;
import com.petar.university_service.dao.SubjectDao;
import com.petar.university_service.model.*;
import com.petar.university_service.model.dto.RatingResDto;
import com.petar.university_service.service.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class SubjectServiceImpl implements SubjectService {

    @Autowired
    private SubjectDao subjectDao;

    @Autowired
    private StudentSubjectDao studentSubjectDao;

    @Autowired
    private AssistantSubjectDao assistantSubjectDao;

    @Override
    public List<Subject> getAllSubjects() {
        return subjectDao.findAll();
    }

    @Override
    public Subject create(Subject s) {
        return subjectDao.save(s);
    }

    @Override
    public Optional<Subject> getSubject(int id) {
        return subjectDao.findById(id);
    }

    @Override
    public List<RatingResDto> getRatings(int id) {
        List<StudentSubject> studentSubjectList = studentSubjectDao.findBySubjectId(id);
        List<RatingResDto> toReturn = new ArrayList<>();
        for(StudentSubject ss: studentSubjectList){
            toReturn.add(new RatingResDto(ss.getStudentSubjectRating(), ss.getStudentSubjectReview()));
        }
        return toReturn;
    }

    @Override
    public double averageRating(int id) {
        List<StudentSubject> studentSubjectList = studentSubjectDao.findBySubjectId(id);
        int sum = 0;
        int cnt = 0;
        for(StudentSubject ss: studentSubjectList){
            sum += ss.getStudentSubjectRating();
            cnt++;
        }
        return (sum*1.0)/cnt;
    }

    @Override
    public List<Student> getStudents(int id) {
        List<StudentSubject> ssList = studentSubjectDao.findBySubjectId(id);
        List<Student> students = new ArrayList<>();
        for(StudentSubject ss: ssList){
            students.add(ss.getStudent());
        }
        return students;
    }

    @Override
    public List<Assistant> getAssistants(int id) {
        List<AssistantSubject> asList = assistantSubjectDao.findBySubjectId(id);
        List<Assistant> assistants = new ArrayList<>();
        for(AssistantSubject as: asList){
            assistants.add(as.getAssistant());
        }
        return assistants;
    }

    @Override
    public List<StudentSubject> getStudentSubjectBySubjectId(int id) {
        return studentSubjectDao.findBySubjectId(id);
    }
}
