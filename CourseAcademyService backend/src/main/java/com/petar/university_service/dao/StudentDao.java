package com.petar.university_service.dao;

import com.petar.university_service.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StudentDao extends JpaRepository<Student, Integer> {

    Optional<Student> findByNameAndLastName(String name, String lastName);

}
