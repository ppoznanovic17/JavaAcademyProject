package com.petar.university_service.dao;

import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AssistantDao extends JpaRepository<Assistant, Integer> {


    Optional<Assistant> findByNameAndLastName(String name, String lastName);

}
