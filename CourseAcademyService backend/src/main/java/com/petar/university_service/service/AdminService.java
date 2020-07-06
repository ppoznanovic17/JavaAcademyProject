package com.petar.university_service.service;

import com.petar.university_service.model.*;

public interface AdminService {

    Student createStudent(Student s);
    Professor createProfessor(Professor p);
    Assistant createAssistant(Assistant a);
    Subject createSubject(Subject s);
}
