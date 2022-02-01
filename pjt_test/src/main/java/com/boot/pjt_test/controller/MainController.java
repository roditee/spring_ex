package com.boot.pjt_test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	@RequestMapping("/clovaOCRForm")
	public String clovaOCRForm() {
		return "ocrForm";
	}
}
