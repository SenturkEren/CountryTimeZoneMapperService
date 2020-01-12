package com.assessment.CTZMapper;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import java.util.Random;

@SpringBootApplication
@EnableAspectJAutoProxy
public class CtzMapperApplication {

	public static void main(String[] args) {
		SpringApplication.run(CtzMapperApplication.class, args);
	}

}
