package com.petar.university_service.service;

import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.AssistantSubject;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.PointsToStudentDto;
import com.petar.university_service.model.embeddable.AssistantSubjectPK;

import java.util.List;
import java.util.Optional;

public interface AssistantService {

    List<Assistant> getAllAssistants();

    Assistant create(Assistant a);

    Optional<Assistant> getAssistant(int id);

    List<AssistantSubject> getAssistantsSubjects(int id);
    List<Subject> getNoAssistantsSubjects(int id);

    AssistantSubject addAssistantToSubject(int assistantId, int subjectId);

    Optional<AssistantSubject> deleteAssistantSubjectById(int assistantId, int subjectId);

    StudentSubject givePointsToStudent(PointsToStudentDto pointsToStudentDto);

}
