package com.multi.backendproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	
	@ResponseBody
	@RequestMapping("/login")
	public String loginCheck(@RequestParam("id") String id, @RequestParam("pw") String pw) {

		String result = "";
		if(id.equals("abcd") && pw.equals("1234"))
			result ="success";
		else
			result = "fail";
		
		return result;
	}
	
}