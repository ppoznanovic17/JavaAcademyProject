package com.petar.university_service.service.impl;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTCreationException;
import com.petar.university_service.dao.*;
import com.petar.university_service.model.*;
import com.petar.university_service.model.dto.UserLoginDto;
import com.petar.university_service.service.AuthenticationService;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@NoArgsConstructor
@Service
public class AuthenticationServiceImpl implements AuthenticationService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private StudentDao studentDao;

    @Autowired
    private ProfessorDao professorDao;

    @Autowired
    private AssistantDao assistantDao;



    @Override
    public String logIn(UserLoginDto userLoginDto) {
        System.out.println(userLoginDto.getRole());
        Optional<Role> r = roleDao.findByRole(userLoginDto.getRole());
        if(r.isEmpty()){
            System.out.println("Role dont exist.");
            return null;
        }

        Optional<User> u = userDao.findByUsername(userLoginDto.getUsername());
        if(u.isEmpty()){
            System.out.println("Username doesnt exist.");
            return null;
        }

        if(!u.get().getPassword().equals(userLoginDto.getPassword()) || !u.get().getRole().getRole().equalsIgnoreCase(userLoginDto.getRole())){
            System.out.println("Password or Role dont match.");
            return null;
        }

        String name, lastName;
        if(r.get().getRole().equalsIgnoreCase("admin")){
            name = userLoginDto.getUsername();
            lastName = "admin";
        }else{
             name = userLoginDto.getUsername().split("_")[0];
             lastName = userLoginDto.getUsername().split("_")[1];
        }

        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            String token = JWT.create()
                    .withIssuer("auth0")
                    .withSubject(userLoginDto.getUsername())
                    .withClaim("name", name)
                    .withClaim("lastname", lastName)
                    .withClaim("role" , r.get().getRole())
                    .sign(algorithm);
            return token;
        } catch (JWTCreationException exception){
            //Invalid Signing configuration / Couldn't convert Claims.
        }
        return "Error.";
    }

    @Override
    public int getId(String name, String lastName, String role) {
        if(role.equalsIgnoreCase("admin")){
            Optional<User> userOptional = userDao.findByUsername(name);
            if(userOptional.isEmpty()) return -1;
            return userOptional.get().getId();
        }

        if(role.equalsIgnoreCase("student")){
            Optional<Student> s = studentDao.findByNameAndLastName(name, lastName);
            if(s.isEmpty()) return -1;
            return s.get().getId();
        }

        if(role.equalsIgnoreCase("assistant")){
            Optional<Assistant> a = assistantDao.findByNameAndLastName(name, lastName);
            if(a.isEmpty()) return -1;
            return a.get().getId();
        }

        if(role.equalsIgnoreCase("professor")){
            Optional<Professor> p = professorDao.findByNameAndLastName(name, lastName);
            if(p.isEmpty()) return -1;
            return p.get().getId();
        }
        return -1;
    }
}
