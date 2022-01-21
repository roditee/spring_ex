package com.boot.backendMiniProject.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.boot.backendMiniProject.model.CartVO;
import com.boot.backendMiniProject.model.ProductVO;
import com.boot.backendMiniProject.service.CartService;
import com.boot.backendMiniProject.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService service;
	@Autowired
	CartService service2;
	
	// 상점 페이지
	@RequestMapping("/storeHome")
	public String storeHome() {
		return "/store/storeHome";
	}
		
	// 상품 상세정보 페이지
	@RequestMapping("storeHome/product/{prdNo}")
	public String detailViewProduct(@PathVariable String prdNo, 
									Model model){
		
		System.out.println(prdNo); // 상품번호가 제대로 전달되었는지 확인
	
		ProductVO prd = service.detailViewProduct(prdNo);
		
		model.addAttribute("prd", prd);
		
		System.out.println(prd.getPrdNo()); //Mapper에서 상품을 검색해서 반환했는지 확인
		
		return "store/productDetailView";
	}
	
}
