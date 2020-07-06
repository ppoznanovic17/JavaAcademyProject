package com.petar.university_service.service.impl;

import com.petar.university_service.dao.*;
import com.petar.university_service.model.*;
import com.petar.university_service.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private AssistantDao assistantDao;

    @Autowired
    private StudentDao studentDao;

    @Autowired
    private ProfessorDao professorDao;

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private SubjectDao subjectDao;

    @Override
    public Student createStudent(Student s) {
        studentDao.save(s);
        Optional<Role> r = roleDao.findByRole("STUDENT");
        if(r.isEmpty()){
            System.out.println("Role exception");
            return null;
        }
        String username = s.getName() + "_" + s.getLastName();
        User user = User.builder().username(username)
                            .password(username)
                            .role(r.get()).build();
        userDao.save(user);
        return s;
    }

    @Override
    public Professor createProfessor(Professor p) {
        professorDao.save(p);
        Optional<Role> r = roleDao.findByRole("PROFESSOR");
        if(r.isEmpty()){
            System.out.println("Role exception");
            return null;
        }
        String username = p.getName() + "_" + p.getLastName();
        User user = User.builder().username(username)
                .password(username)
                .role(r.get()).build();
        userDao.save(user);
        return p;
    }

    @Override
    public Assistant createAssistant(Assistant a) {
        assistantDao.save(a);
        Optional<Role> r = roleDao.findByRole("ASSISTANT");
        if(r.isEmpty()){
            System.out.println("Role exception");
            return null;
        }
        String username = a.getName() + "_" + a.getLastName();
        User user = User.builder().username(username)
                .password(username)
                .role(r.get()).build();
        userDao.save(user);
        return a;
    }

    @Override
    public Subject createSubject(Subject s) {
        return subjectDao.save(s);
    }


}
