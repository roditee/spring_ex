package com.multi.product;

import java.util.ArrayList;
import java.util.HashMap;

public interface IProductService {
	// 구현 클래스에서 오버라이딩할 추상 메소드 선언 
	// 규격 지정 : 반드시 구현해야 할 메소드 지정해 놓는 것
	ArrayList<ProductVO> listAllProduct();   		// listAllProfile
	void insertProduct(ProductVO prdVo);			// 상품 정보 등록
	void updateProduct(ProductVO prdVo);			// updateProfile
	void deleteProduct(String prdNo);					// 상품 정보 삭제
	ProductVO detailViewProduct(String prdNo);// profileInfo
	String prdNoCheck(String prdNo);					// 상품 번호 중복 확인
	ArrayList<ProductVO> productSearch(HashMap<String, Object> map); // 상품 검색
}
