package com.boot.backendMiniProject.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.backendMiniProject.model.ProductVO;

public interface IProductDAO {
	
	ArrayList<ProductVO> listCtgProduct(String ctgId);
	ProductVO detailViewProduct(String prdNo);// 상세 상품 조회
	String prdNoCheck(String prdNo); 				//상품 검색
	ArrayList<ProductVO> productSearch(HashMap<String, Object> map); // 상품 검색
}
