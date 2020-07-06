package com.petar.university_service.service.impl;

import com.petar.university_service.dao.AssistantSubjectDao;
import com.petar.university_service.dao.StudentDao;
import com.petar.university_service.dao.StudentSubjectDao;
import com.petar.university_service.dao.SubjectDao;
import com.petar.university_service.model.*;
import com.petar.university_service.model.dto.RateSubjectReqDto;
import com.petar.university_service.model.dto.SubjectResDto;
import com.petar.university_service.model.embeddable.StudentSubjectPK;
import com.petar.university_service.service.StudentService;
import com.petar.university_service.service.SubjectService;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@NoArgsConstructor
@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDao studentDao;

    @Autowired
    private StudentSubjectDao studentSubjectDao;

    @Autowired
    private AssistantSubjectDao assistantSubjectDao;

    @Autowired
    private SubjectDao subjectDao;

    @Override
    public List<Student> getAllStudents() {
        return studentDao.findAll();
    }

    @Override
    public Student create(Student s) {
        return studentDao.save(s);
    }

    @Override
    public Optional<Student> getStudent(int id) {
        return studentDao.findById(id);
    }

    @Override
    public List<StudentSubject> getPassedExams(int id) {
        List<StudentSubject> all = studentSubjectDao.findByStudentId(id);
        List<StudentSubject> passed = new ArrayList<>();
        List<SubjectResDto> subjectResDtoList = new ArrayList<>();
        for(StudentSubject ss: all){
            if(ss.getMark() > 5 && ss.getMark() < 11) {
                passed.add(ss);
            }
        }
        return passed;
    }

    @Override
    public List<StudentSubject> getNoPassedExams(int id) {
        List<StudentSubject> all = studentSubjectDao.findByStudentId(id);
        List<StudentSubject> noPassed = new ArrayList<>();
        List<SubjectResDto> subjectResDtoList = new ArrayList<>();
        for(StudentSubject ss: all){
            if(ss.getMark() < 6) {
                noPassed.add(ss);
            }
        }
        return noPassed;
    }

    @Override
    public List<Subject> getUnregisteredExams(int id) {
        List<StudentSubject> StudentSubjects = studentSubjectDao.findByStudentId(id);
        List<Subject> allSubjects = subjectDao.findAll();
        for(StudentSubject ss: StudentSubjects){
            if( allSubjects.contains(ss.getSubject())){
                allSubjects.remove(ss.getSubject());
            }
        }
        return allSubjects;
    }

    @Override
    public StudentSubject registerSubject(int studentId, int subjectId) {
        System.out.println(studentId + " " + subjectId);
        Optional<Student> studentOptional = studentDao.findById(studentId);
        Optional<Subject> subjectOptional = subjectDao.findById(subjectId);
        if(studentOptional.isEmpty() || subjectOptional.isEmpty()){
            return null;
        }
        Optional<StudentSubject> studentSubject = studentSubjectDao.findByStudentIdAndSubjectId(studentId, subjectId);
        if(studentSubject.isEmpty()){
            StudentSubject ss = new StudentSubject();
            ss.setStudent(studentOptional.get());
            ss.setSubject(subjectOptional.get());
            ss.setAssistantPoints(0);
            ss.setProfessorPoints(0);
            ss.setMark(0);
            StudentSubjectPK studentSubjectPK = new StudentSubjectPK();
            studentSubjectPK.setStudentId(studentId);
            studentSubjectPK.setSubjectId(subjectId);
            ss.setId(studentSubjectPK);
            ss.setStudentSubjectRating(0);
            ss.setStudentSubjectReview(null);
            return studentSubjectDao.save(ss);
        }
        return null;
    }

    @Override
    public StudentSubject rateSubject(RateSubjectReqDto rsDto) {

        Optional<StudentSubject> studentSubjectOptional = studentSubjectDao.findByStudentIdAndSubjectId(rsDto.getStudentId(), rsDto.getSubjectId());
        if(studentSubjectOptional.isEmpty()){
            return null;
        }

        if(studentSubjectOptional.get().getMark()<6){
            return studentSubjectOptional.get();
        }

        StudentSubject ss = studentSubjectOptional.get();
        ss.setStudentSubjectReview(rsDto.getReview());
        ss.setStudentSubjectRating(rsDto.getRating());
        return studentSubjectDao.save(ss);
    }

    @Override
    public Optional<StudentSubject> deleteStudentSubjectById(int studentId, int subjectId) {
        return studentSubjectDao.deleteByStudentIdAndSubjectId(studentId, subjectId);
    }

    @Override
    public boolean studentHasRateSubject(int studentId, int subjectId) {
        Optional<StudentSubject> studentSubjectOptional = studentSubjectDao.findByStudentIdAndSubjectId(studentId, subjectId);
        if(studentSubjectOptional.isEmpty()) return false;

        StudentSubject ss = studentSubjectOptional.get();

        return ss.getStudentSubjectRating() > 0;

    }
}
