package com.virtual_time_capsule.Virtual_Time_Capsule;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@SpringBootApplication
@EnableScheduling
public class VirtualTimeCapsuleApplication {

	public static void main(String[] args) {
		SpringApplication.run(VirtualTimeCapsuleApplication.class, args);
	}

}
