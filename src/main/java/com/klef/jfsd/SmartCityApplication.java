package com.klef.jfsd;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
//import org.springframework.stereotype.Component;

@SpringBootApplication
@EnableScheduling
public class SmartCityApplication {

	public static void main(String[] args) {
		SpringApplication.run(SmartCityApplication.class, args);
		System.out.println("This is our Project of Smart City....!!");

	}

}
