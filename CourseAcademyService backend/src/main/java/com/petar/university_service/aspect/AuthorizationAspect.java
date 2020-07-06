package com.petar.university_service.aspect;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTCreationException;
import com.petar.university_service.service.AuthorizationService;
import lombok.NoArgsConstructor;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

@NoArgsConstructor
@Component
@Aspect
public class AuthorizationAspect {

    @Autowired
    private AuthorizationService authorizationService;

    @Pointcut("execution(* *(..)) && @annotation(com.petar.university_service.aspect.annotations.Admin)")
    private void admin(){}

    @Pointcut("execution(* *(..)) && @annotation(com.petar.university_service.aspect.annotations.Professor)")
    private void professor(){}

    @Pointcut("execution(* *(..)) && @annotation(com.petar.university_service.aspect.annotations.Student)")
    private void student(){}

    @Pointcut("execution(* *(..)) && @annotation(com.petar.university_service.aspect.annotations.Assistant)")
    private void assistant(){}

    @Pointcut("execution(* *(..)) && @annotation(com.petar.university_service.aspect.annotations.Logged)")
    private void logged(){}

    @Around("assistant()")
    public Object assistantPermission(ProceedingJoinPoint pjp) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String header = request.getHeader("Authorization");

        if(authorizationService.isAssistant(header) || authorizationService.isAdmin(header)){
            try {
                return pjp.proceed();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }

        return null;
    }

    @Around("admin()")
    public Object adminPermission(ProceedingJoinPoint pjp) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String header = request.getHeader("Authorization");

        if(authorizationService.isAdmin(header)){
            try {
                return pjp.proceed();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }

        return null;
    }

    @Around("student()")
    public Object studentPermission(ProceedingJoinPoint pjp) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String header = request.getHeader("Authorization");

        if(authorizationService.isStudent(header) || authorizationService.isAdmin(header)){
            try {
                return pjp.proceed();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }

        return null;
    }

    @Around("professor()")
    public Object professorPermission(ProceedingJoinPoint pjp) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String header = request.getHeader("Authorization");

        if(authorizationService.isProfessor(header) || authorizationService.isAdmin(header)){
            try {
                return pjp.proceed();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }

        return null;
    }

    @Around("logged()")
    public Object anyoneLoggedPermission(ProceedingJoinPoint pjp) {
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String header = request.getHeader("Authorization");

        if(authorizationService.isLogged(header)){
            try {
                return pjp.proceed();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }

        return null;
    }



}
