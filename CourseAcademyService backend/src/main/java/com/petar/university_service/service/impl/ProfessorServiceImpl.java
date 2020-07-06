package com.petar.university_service.service.impl;

import com.petar.university_service.dao.ProfessorDao;
import com.petar.university_service.dao.StudentDao;
import com.petar.university_service.dao.StudentSubjectDao;
import com.petar.university_service.dao.SubjectDao;
import com.petar.university_service.model.Professor;
import com.petar.university_service.model.Student;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.PointsToStudentDto;
import com.petar.university_service.model.dto.StudentSubjectReqDto;
import com.petar.university_service.service.ProfessorService;
import com.petar.university_service.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProfessorServiceImpl implements ProfessorService {

    @Autowired
    private ProfessorDao professorDao;

    @Autowired
    private SubjectDao subjectDao;

    @Autowired
    private StudentSubjectDao studentSubjectDao;

    @Override
    public List<Professor> getAllProfessors() {
        return professorDao.findAll();
    }

    @Override
    public Professor create(Professor p) {
        return professorDao.save(p);
    }

    @Override
    public Optional<Professor> getProfessor(int id) {
        return professorDao.findById(id);
    }

    @Override
    public List<Subject> getProfessorsSubjects(int id) {
        return subjectDao.findAllByProfessorId(id);


    }

    @Override
    public List<Subject> getNoProfessorsSubjects(int id) {
        List<Subject> allSubjects = subjectDao.findAll();
        List<Subject> professorsSubjects = subjectDao.findAllByProfessorId(id);
        for(Subject s : professorsSubjects){
            allSubjects.remove(s);
        }
        return allSubjects;
    }

    @Override
    public Subject changeProfessor(int professorId, int subjectId) {
        Optional<Professor> professorOptional = professorDao.findById(professorId);
        Optional<Subject> subjectOptional = subjectDao.findById(subjectId);
        if(professorOptional.isEmpty() || subjectOptional.isEmpty()){
            return null;
        }
        if(subjectOptional.get().getProfessor().equals(professorOptional.get())){
            return subjectOptional.get();
        }else{
            Subject s = subjectOptional.get();
            s.setProfessor(professorOptional.get());
            return subjectDao.save(s);
        }
    }

    @Override
    public StudentSubject givePointsToStudent(PointsToStudentDto pointsToStudentDto) {

        Optional<StudentSubject> studentSubjectOptional = studentSubjectDao.findByStudentIdAndSubjectId(pointsToStudentDto.getStudentId(), pointsToStudentDto.getSubjectId());
        if(studentSubjectOptional.isEmpty()){
            return null;
        }

        StudentSubject ss = studentSubjectOptional.get();
        int max = ss.getSubject().getMaxProfessorPoints();

        if(pointsToStudentDto.getPoints() > max) return null;

        ss.setProfessorPoints(pointsToStudentDto.getPoints());
        return studentSubjectDao.save(ss);


    }

    @Override
    public StudentSubject rate(StudentSubjectReqDto ssDto) {
        System.out.println(ssDto.getStudentId());
        System.out.println(ssDto.getSubjectId());
        Optional<StudentSubject> studentSubjectOptional = studentSubjectDao.findByStudentIdAndSubjectId(ssDto.getStudentId(), ssDto.getSubjectId());
        if(studentSubjectOptional.isEmpty()) return null;

        StudentSubject ss = studentSubjectOptional.get();
        int points = ss.getAssistantPoints() + ss.getProfessorPoints();
        int mark = (points-1)/10;
        if(mark <6) mark = 5;
        ss.setMark(mark);

        return studentSubjectDao.save(ss);
    }
}
