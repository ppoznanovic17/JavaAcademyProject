package com.petar.university_service.aspect;

import com.auth0.jwt.JWT;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTCreationException;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;


@Aspect
@Component
public class HelloAspect {


    @Pointcut("execution(* *(..))")
    private void all(){}

   /* @Around("@annotation(com.petar.university_service.aspect.annotations.Admin) && all()")
    public Object saJoinom(ProceedingJoinPoint pjp){
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String header = request.getHeader("a");

        try {
            Algorithm algorithm = Algorithm.HMAC256("secret");
            String token = JWT.create()
                    .withIssuer("auth0")
                    .withSubject(header)
                    .sign(algorithm);
            System.out.println(header);
            System.out.println(token);
            if(header != null){
                pjp.proceed();
            }
        } catch (JWTCreationException exception){
            //Invalid Signing configuration / Couldn't convert Claims.
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        System.out.println("after!");
        return null;
    }*/


}
