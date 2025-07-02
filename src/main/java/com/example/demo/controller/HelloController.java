package com.example.demo.controller;

import org.springframework.web.bind.annotation.*;

@RestController
public class HelloController {

	@GetMapping("/hello")
	public String hello() {
		return "Assalamu alaikum from spring boot!_ We here to deploy the application programming interface";
	}
}
