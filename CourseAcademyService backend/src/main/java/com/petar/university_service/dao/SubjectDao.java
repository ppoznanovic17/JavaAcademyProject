package com.petar.university_service.dao;

import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface SubjectDao extends JpaRepository<Subject, Integer> {

    Optional<Subject> findByName(String name);
    Optional<Subject> findById(int id);
    List<Subject> findAllByProfessorId(int id);

}
