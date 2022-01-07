package com.spring_mvc.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {
	
	// home 페이지에서 studentForm 페이지 요청 오면 처리해줌
	@RequestMapping("/student/studentForm")
	public String studentFormView() {
		return "student/studentForm";
	}
	
	// (1) HttpServletRequest 클래스의 getParameter() 메소드 사용
	// 폼에서 전송된 데이터 받아서 변수에 저장하고
	// 다시 뷰 페이지로 전송 : Model 사용
	@RequestMapping("/student/newStudent")
	public String insertStudent(HttpServletRequest request, Model model) {
		// form의 <input> 태그의 name 속성의 값 받아서 변수에 저장
		String no = request.getParameter("no");
		String name = request.getParameter("name");
		String year = request.getParameter("year");
		
		// view 페이지로 출력 : Model 설정
		model.addAttribute("no", no);
		model.addAttribute("name", name);
		model.addAttribute("year", year);
		
		return "student/studentResult";
	}
	
	// (2) @RequestParam 어노테이션 사용
	@RequestMapping("/student/newStudent2")
	public String insertStudent2(@RequestParam("no") String no,
												  @RequestParam("name") String name,
												  @RequestParam("year") String year,
												  Model model) {
		// view 페이지로 출력 : Model 설정
				model.addAttribute("no", no);
				model.addAttribute("name", name);
				model.addAttribute("year", year);
				
				return "student/studentResult";
	}
	
	// (3) Command 객체 사용
		@RequestMapping("/student/newStudent3")
		public String insertStudent3(Student student) {
			//Command 객체는 자동으로 View Model에 등록됨 : Model 설정 필요 없음
			// System.out.println(student.getName()); //콘솔에 출력
			return "student/studentCmdResult";
		}
		
	// (3-2)
		@RequestMapping("/student/newStudent4")
		public String insertStudent4(@ModelAttribute("stdInfo") Student student) {
			return "student/studentCmdRenameResult";
		}
		
		// (4) url을 통한 데이터 전송 : @PathVariable 어노테이션 사용
		//@PathVariable 통해 받아온 변수명과 @RequestMapping 요청경로 맨 뒤 EL표현 내부 변수명 일치해야 함
		@RequestMapping("/student/studentModify/{stdNo}")
		public String studentModify(@PathVariable String stdNo) {
			// 수정 처리했다고 가정하고
			System.out.println(stdNo);
			// home 페이지로 이동
			// return "jsp/home";
			return "redirect:/";
		}
}