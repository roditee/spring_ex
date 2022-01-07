package com.spring_mvc.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProductController {
	// home 페이지에서 productForm 페이지 요청 오면 처리해줌
	@RequestMapping("/product/productForm")
	public String prdInfoView() {
		return "product/productForm";
	}
	
	// (1) HttpServletRequest 클래스의 getParameter() 메소드 사용
		// 폼에서 전송된 데이터 받아서 변수에 저장하고
		// 다시 뷰 페이지로 전송 : Model 사용
		@RequestMapping("/product/newProduct")
		public String insertProduct(HttpServletRequest request, Model model) {
			// form의 <input> 태그의 name 속성의 값 받아서 변수에 저장
			String no = request.getParameter("no");
			String name = request.getParameter("name");
			String price = request.getParameter("price");
			String company = request.getParameter("company");
			String date = request.getParameter("date");
			String stock = request.getParameter("stock");
			
			// view 페이지로 출력 : Model 설정
			model.addAttribute("no", no);
			model.addAttribute("name", name);
			model.addAttribute("price", price);
			model.addAttribute("company", company);
			model.addAttribute("date", date);
			model.addAttribute("stock", stock);
			
			return "product/productResult";
		}
		
		@RequestMapping("/product/newProduct2")
		public String insertProduct2(@RequestParam("no") String no,
													@RequestParam("name") String name,
													@RequestParam("price") String price,
													@RequestParam("company") String company,
													@RequestParam("date") String date,
													@RequestParam("stock") String stock,
													Model model) {
			
			// view 페이지로 출력 : Model 설정
			model.addAttribute("no", no);
			model.addAttribute("name", name);
			model.addAttribute("price", price);
			model.addAttribute("company", company);
			model.addAttribute("date", date);
			model.addAttribute("stock", stock);
			
			return "product/productResult";
		}
		
		// Command 객체 사용
		@RequestMapping("/product/newProduct3")
		public String insertProuct3(Product product) {
			return "product/productCmdResult";
		}
}
