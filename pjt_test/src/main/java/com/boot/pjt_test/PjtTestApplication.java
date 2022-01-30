package com.boot.pjt_test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.boot.pjt_test.controller.MainController;

@SpringBootApplication
//@ComponentScan(basePackageClasses = MainController.class)
@ComponentScan(basePackages = {"com.boot.pjt_test"})
public class PjtTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(PjtTestApplication.class, args);
	}

}
