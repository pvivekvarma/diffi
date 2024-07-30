package com.pvivekvarma.diffi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

//NOTE: Need to disable DataSourceAutoConfiguration.class as the application does not depend on database as of now.
@EnableAutoConfiguration(exclude = {DataSourceAutoConfiguration.class}) 
@SpringBootApplication
public class DiffiApplication {

	public static void main(String[] args) {
		SpringApplication.run(DiffiApplication.class, args);
	}

}
