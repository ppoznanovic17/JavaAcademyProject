package com.petar.university_service.service.impl;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.petar.university_service.dao.AssistantDao;
import com.petar.university_service.dao.ProfessorDao;
import com.petar.university_service.dao.StudentDao;
import com.petar.university_service.dao.UserDao;
import com.petar.university_service.model.Assistant;
import com.petar.university_service.model.Professor;
import com.petar.university_service.model.Student;
import com.petar.university_service.service.AuthorizationService;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@NoArgsConstructor
public class AuthorizationServiceImpl implements AuthorizationService {

    @Autowired
    private StudentDao studentDao;

    @Autowired
    private ProfessorDao professorDao;

    @Autowired
    private AssistantDao assistantDao;

    @Override
    public boolean isAdmin(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            String role = jwt.getClaim("role").asString();
            if( role.equalsIgnoreCase("admin")) return true;
            System.out.println(role);
        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean isStudent(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            String role = jwt.getClaim("role").asString();
            if( role.equalsIgnoreCase("student")) return true;
            System.out.println(role);
        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean isProfessor(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            String role = jwt.getClaim("role").asString();
            if( role.equalsIgnoreCase("professor")) return true;
            System.out.println(role);
        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean isAssistant(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            String role = jwt.getClaim("role").asString();
            if( role.equalsIgnoreCase("assistant")) return true;
            System.out.println(role);
        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return false;
    }

    @Override
    public String getName(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            return jwt.getClaim("name").asString();
        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return null;
    }

    @Override
    public String getLastName(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            return jwt.getClaim("lastname").asString();
        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return null;
    }

    @Override
    public Student getStudentFromToken(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            if(jwt.getClaim("role").asString().equalsIgnoreCase("STUDENT")){
                String name = jwt.getClaim("name").asString();
                String lastname = jwt.getClaim("lastname").asString();
                Optional<Student> s = studentDao.findByNameAndLastName(name, lastname);
                return s.get();
            }

        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return null;
    }

    @Override
    public Professor getProfessorFromToken(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            if(jwt.getClaim("role").asString().equalsIgnoreCase("PROFESSOR")){
                String name = jwt.getClaim("name").asString();
                String lastname = jwt.getClaim("lastname").asString();
                Optional<Professor> p = professorDao.findByNameAndLastName(name, lastname);
                return p.get();
            }

        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return null;
    }

    @Override
    public Assistant getAssistantFromToken(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            if(jwt.getClaim("role").asString().equalsIgnoreCase("ASSISTANT")){
                String name = jwt.getClaim("name").asString();
                String lastname = jwt.getClaim("lastname").asString();
                Optional<Assistant> a = assistantDao.findByNameAndLastName(name, lastname);
                return a.get();
            }

        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean isLogged(String token) {
        try {
            Algorithm algorithm = Algorithm.HMAC256("peca");
            JWTVerifier verifier = JWT.require(algorithm)
                    .withIssuer("auth0")
                    .build(); //Reusable verifier instance
            DecodedJWT jwt = verifier.verify(token);
            return true;


        } catch (JWTVerificationException exception){
            //Invalid signature/claims
            exception.printStackTrace();
        }
        return false;
    }
}
