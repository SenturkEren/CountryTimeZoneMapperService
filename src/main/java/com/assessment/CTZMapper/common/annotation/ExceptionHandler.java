package com.assessment.CTZMapper.common.annotation;


import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

@Configuration
@Aspect
public class ExceptionHandler {
    @AfterThrowing(pointcut = "@annotation(com.assessment.CTZMapper.common.annotation.HandleExceptions)", throwing = "ex")
    public void logAndThrowError(Exception ex) {
        ex.printStackTrace();
        throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
