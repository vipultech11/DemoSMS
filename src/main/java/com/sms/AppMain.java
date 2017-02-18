package com.sms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@ComponentScan
@Configuration
@SpringBootApplication
public class AppMain {

	public static void main(String[] args) {

		SpringApplication.run(AppMain.class, args);
	}
}
