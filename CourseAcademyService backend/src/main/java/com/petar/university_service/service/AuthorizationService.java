package com.petar.university_service.service;


import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Professor;
import com.petar.university_service.model.Student;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties;

public interface AuthorizationService {

    boolean isAdmin(String token);
    boolean isStudent(String token);
    boolean isProfessor(String token);
    boolean isAssistant(String token);

    String getName(String token);
    String getLastName(String token);

    Student getStudentFromToken(String token);
    Professor getProfessorFromToken(String token);
    Assistant getAssistantFromToken(String token);

    boolean isLogged(String token);



}
