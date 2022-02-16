package com.boot.pjt_test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalendarController {
	@RequestMapping("/calendarView")
	public String calendarView() {
		return "calendarView";
	}
}
