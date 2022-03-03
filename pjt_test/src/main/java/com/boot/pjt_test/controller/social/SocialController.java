package com.boot.pjt_test.controller.social;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SocialController {
	@RequestMapping("/kakaoSocial")
	public String kakaoSocial() {
		return "social/kakaoSocial";
	}
}
