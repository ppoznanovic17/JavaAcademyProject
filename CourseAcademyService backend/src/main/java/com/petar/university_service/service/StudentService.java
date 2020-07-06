package com.petar.university_service.service;

import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Student;
import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.Subject;
import com.petar.university_service.model.dto.RateSubjectReqDto;
import com.petar.university_service.model.embeddable.StudentSubjectPK;

import java.util.List;
import java.util.Optional;

public interface StudentService {

    List<Student> getAllStudents();

    Student create( Student s);

    Optional<Student> getStudent(int id);

    List<StudentSubject> getPassedExams(int id);
    List<StudentSubject> getNoPassedExams(int id);

    List<Subject> getUnregisteredExams(int id);

    StudentSubject registerSubject(int studentId, int subjectId);

    StudentSubject rateSubject(RateSubjectReqDto rateSubjectReqDto);

    Optional<StudentSubject> deleteStudentSubjectById(int studentId, int subjectId);

    boolean studentHasRateSubject(int studentId, int subjectId);

}
