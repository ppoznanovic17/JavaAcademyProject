package com.petar.university_service.service.impl;

import com.petar.university_service.dao.AssistantDao;
import com.petar.university_service.dao.AssistantSubjectDao;
import com.petar.university_service.dao.StudentSubjectDao;
import com.petar.university_service.dao.SubjectDao;
import com.petar.university_service.model.*;
import com.petar.university_service.model.dto.PointsToStudentDto;
import com.petar.university_service.model.embeddable.AssistantSubjectPK;
import com.petar.university_service.service.AssistantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AssistantServiceImpl implements AssistantService {

    @Autowired
    private AssistantDao assistantDao;

    @Autowired
    private AssistantSubjectDao assistantSubjectDao;

    @Autowired
    private SubjectDao subjectDao;

    @Autowired
    private StudentSubjectDao studentSubjectDao;

    @Override
    public List<Assistant> getAllAssistants() {
        return assistantDao.findAll();
    }

    @Override
    public Assistant create(Assistant a) {
        return assistantDao.save(a);
    }

    @Override
    public Optional<Assistant> getAssistant(int id) {
        return assistantDao.findById(id);
    }

    @Override
    public List<AssistantSubject> getAssistantsSubjects(int id) {
        return assistantSubjectDao.findByAssistantId(id);
    }

    @Override
    public List<Subject> getNoAssistantsSubjects(int id) {
        List<AssistantSubject> assistantSubjectList = assistantSubjectDao.findByAssistantId(id);
        List<Subject> subjects = subjectDao.findAll();
        for(AssistantSubject as: assistantSubjectList){
            subjects.remove(as.getSubject());
        }
        return subjects;
    }

    @Override
    public AssistantSubject addAssistantToSubject(int assistantId, int subjectId) {
        AssistantSubjectPK assistantSubjectPK = AssistantSubjectPK.builder()
                .subjectId(subjectId)
                .assistantId(assistantId)
                .build();
        System.out.println(assistantSubjectPK);
        Optional<AssistantSubject> assistantSubjectOptional = assistantSubjectDao.findById(assistantSubjectPK);
        if(assistantSubjectOptional.isEmpty()){
            Optional<Assistant> assistantOptional = assistantDao.findById(assistantId);
            Optional<Subject> subjectOptional = subjectDao.findById(subjectId);
            if(assistantOptional.isEmpty() || subjectOptional.isEmpty()){
                return null;
            }
            AssistantSubject as = new AssistantSubject();

            as.setId(assistantSubjectPK);
            as.setAssistant(assistantOptional.get());
            as.setSubject(subjectOptional.get());
            System.out.println(as);
            return assistantSubjectDao.save(as);

        }
        return null;
    }

    @Override
    public Optional<AssistantSubject> deleteAssistantSubjectById(int assistantId, int subjectId) {
        return assistantSubjectDao.deleteByAssistantIdAndSubjectId(assistantId, subjectId);
    }

    @Override
    public StudentSubject givePointsToStudent(PointsToStudentDto pointsToStudentDto) {

        Optional<StudentSubject> studentOptional = studentSubjectDao.findByStudentIdAndSubjectId(pointsToStudentDto.getStudentId(), pointsToStudentDto.getSubjectId());
        if(studentOptional.isEmpty()){
            return null;
        }


        StudentSubject ss = studentOptional.get();
        int max = ss.getSubject().getMaxAssistantPoints();
        if(pointsToStudentDto.getPoints() > max) return null;
        ss.setAssistantPoints(pointsToStudentDto.getPoints());
        return studentSubjectDao.save(ss);


    }
}
