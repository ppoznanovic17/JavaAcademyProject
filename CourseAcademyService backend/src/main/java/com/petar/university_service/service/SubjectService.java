package com.petar.university_service.service;

import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Student;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.RatingResDto;

import java.util.List;
import java.util.Optional;

public interface SubjectService {

    List<Subject> getAllSubjects();

    Subject create(Subject s);

    Optional<Subject> getSubject(int id);

    List<RatingResDto> getRatings(int id);

    double averageRating(int id);

    List<Student> getStudents(int id);

    List<Assistant> getAssistants(int id);

    List<StudentSubject> getStudentSubjectBySubjectId(int id);

}
