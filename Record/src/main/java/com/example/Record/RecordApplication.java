package com.example.Record;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EntityScan(basePackages = "com.example.Record")
@EnableDiscoveryClient
public class RecordApplication {

	public static void main(String[] args) {
		SpringApplication.run(RecordApplication.class, args);
	}

}
