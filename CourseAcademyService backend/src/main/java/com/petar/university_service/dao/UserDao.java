package com.petar.university_service.dao;

import com.petar.university_service.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserDao extends JpaRepository<User, Integer> {

   Optional<User> findByUsername(String username);
}
