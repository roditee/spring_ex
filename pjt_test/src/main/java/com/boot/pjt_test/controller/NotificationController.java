package com.boot.pjt_test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotificationController {
	@RequestMapping("/notificationTest")
	public String notificationTest() {
		return "notificationTest";
	}
}
