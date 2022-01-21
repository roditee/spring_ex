package com.boot.backendMiniProject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String index() {
		return "/index";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "/login";
	}
	
	@RequestMapping("/join")
	public String join() {
		return "/join";
	}
	
	@RequestMapping("/mbtiInfo")
	public String mbtiInfo() {
		return "/mbtiInfo";
	}
	
	@RequestMapping("/myFeed")
	public String myFeed() {
		return "/myFeed";
	}
	
	@RequestMapping("/post")
	public String post() {
		return "/post";
	}
	
	@RequestMapping("/post2")
	public String post2() {
		return "/post2";
	}
	
	@RequestMapping("/chatbot")
	public String chatbot() {
		return "/chatbot";
	}
	
	@RequestMapping("/cart")
	public String cart() {
		return "/cart";
	}
}
