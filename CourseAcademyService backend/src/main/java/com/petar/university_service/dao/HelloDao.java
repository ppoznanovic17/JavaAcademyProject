package com.petar.university_service.dao;

import com.petar.university_service.model.Hello;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HelloDao extends JpaRepository<Hello, Integer> {

    @Override
    List<Hello> findAll();


}
