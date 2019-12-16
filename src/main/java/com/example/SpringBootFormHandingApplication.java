
// This file is where the project starts execution. 
package com.example;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;

@SpringBootApplication
public class SpringBootFormHandingApplication extends SpringBootServletInitializer {
	
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder)
	{
		return builder.sources(SpringBootFormHandingApplication.class);
	}
	public static void main(String[] args) {
		//run SpringApplication
		SpringApplication.run(SpringBootFormHandingApplication.class, args);
	}
}
