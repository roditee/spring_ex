package com.boot.pjt_test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.pjt_test.service.PharmacyInfoService;

@Controller
public class PharmXMLController {
	@Autowired
	PharmacyInfoService service;
	
	@RequestMapping("/PharmXMLController")
	public String PharmXMLController() {
		service.main();
		return "index";
	}
}