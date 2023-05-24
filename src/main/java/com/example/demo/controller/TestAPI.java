package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestAPI {

	@GetMapping("/test-api")
	String printString() {
		return "my api docker";
	}

}
