package com.spring_mvc.mybatis.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_mvc.mybatis.model.ProductVO;
import com.spring_mvc.mybatis.service.ProductService;

@Controller
public class ProductController {
	// DI 설정
	@Autowired
	ProductService service;
	
	
	// 실행 시 index 페이지 열기
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	// 전체 상품 조회
	@RequestMapping("/product/listAllProduct")
	public String listAllProduct(Model model) {
		// 전체 상품 목록을 받아와 모델에 저장하고 뷰로 보여줌
		ArrayList<ProductVO> prdList = service.listAllProduct();
		model.addAttribute("prdList", prdList);		
		return "product/productListView";
	}
	
	// 상품 등록 폼으로 이동
	@RequestMapping("/product/newProductForm")
	public String newProductForm() {
		return "product/newProductForm";
	}
	
	// 상품 등록
	@RequestMapping("/product/insertProduct")
	public String insertProduct(ProductVO prd) {
		service.insertProduct(prd);
		return "redirect:./listAllProduct";
		//return "redirect:/product/listAllProduct";
		//return "product/productListView"; // 이렇게 하면 데이터 출력 안 됨
	}
	
	// 상품 상세 정보 페이지로 이동
	@RequestMapping("/product/detailViewProduct/{prdNo}")
	public String productViewDetail(@PathVariable String prdNo, Model model) {
		// 상품 번호 전달하고, 해당 상품 정보 받아오기
		ProductVO prd = service.detailViewProduct(prdNo);
		model.addAttribute("prd", prd);
		
		// System.out.println(prd.getPrdNo()); // 서버로부터 반환된 값 확인
		
		return "product/productDetailView"; // 상품 상세 정보 뷰 페이지
	}
	
	// 상품 정보 수정 화면으로 이동 (수정하기 위해 먼저 상품 상세 정보를 화면(입력 폼)에 출력)
	@RequestMapping("/product/updateProductForm/{prdNo}")
	public String updateProductForm(@PathVariable String prdNo, Model model) {
		// 상품번호 전달하고, 해당 상품 정보 받아오기 
		ProductVO prd = service.detailViewProduct(prdNo); // 상세 상품 조회 메소드 그대로 사용
		model.addAttribute("prd", prd);
		return "product/updateProductForm";
	}
	
	// 상품 정보 수정 : 수정된 상품 정보 DB에 저장
	@RequestMapping("/product/updateProduct")
	public String detailViewProduct(ProductVO prd) {
		service.updateProduct(prd);		
		return "redirect:./listAllProduct";  // 전체 상품 조회 페이지로 포워딩
	}
	
	// 상품 정보 삭제
	@RequestMapping("/product/deleteProduct/{prdNo}")
	public String deleteProduct(@PathVariable String prdNo) {
		// System.out.println(prdNo); // 상품 번호 전달 되는지 확인
		service.deleteProduct(prdNo);
		return "redirect:../listAllProduct";  // 전체 상품 조회 페이지로 포워딩
		// 또는 return "redirect:/product/listAllProduct";
	}
}