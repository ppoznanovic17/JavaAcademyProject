package com.petar.university_service.dao;

import com.petar.university_service.model.StudentSubject;
import com.petar.university_service.model.embeddable.StudentSubjectPK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StudentSubjectDao extends JpaRepository<StudentSubject, Integer> {

   List<StudentSubject> findByStudentId(int id);
    List<StudentSubject> findByStudentName(String name);

    List<StudentSubject> findBySubjectId(int id);
    List<StudentSubject> findBySubjectName(String name);

    Optional<StudentSubject> deleteById(StudentSubjectPK id);

    Optional<StudentSubject> deleteByStudentIdAndSubjectId(int studentId, int subjectId);

    Optional<StudentSubject> findByStudentIdAndSubjectId(int studentId, int subjectId);

}
