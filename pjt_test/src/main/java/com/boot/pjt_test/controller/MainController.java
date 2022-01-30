package com.boot.pjt_test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.pjt_test.service.SearchDictService;

@Controller
public class MainController {
	
	@Autowired
	SearchDictService searchService;
	
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	@RequestMapping("/clovaOCRForm")
	public String clovaOCRForm() {
		return "ocrForm";
	}
}
