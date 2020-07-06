package com.petar.university_service.service;

import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Professor;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.PointsToStudentDto;
import com.petar.university_service.model.dto.StudentSubjectReqDto;

import java.util.List;
import java.util.Optional;

public interface ProfessorService {

    List<Professor> getAllProfessors();

    Professor create( Professor p);

    Optional<Professor> getProfessor(int id);

    List<Subject> getProfessorsSubjects(int id);

    List<Subject> getNoProfessorsSubjects(int id);

    Subject changeProfessor(int professorId, int subjectId);

    StudentSubject givePointsToStudent(PointsToStudentDto pointsToStudentDto);

    StudentSubject rate(StudentSubjectReqDto ssDto);
}
