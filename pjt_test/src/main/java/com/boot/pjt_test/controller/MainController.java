package com.boot.pjt_test.controller;

import org.jsoup.Jsoup;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.w3c.dom.Document;

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
