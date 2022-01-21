package com.boot.backendMiniProject.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.backendMiniProject.model.ProductVO;


public interface IProductService {
	
		ArrayList<ProductVO> listCtgProduct(String ctgId);
		//앞에서 했음
		ArrayList<ProductVO> listAllProduct();
		void insertProduct(ProductVO prdVo);
		void updateProduct(ProductVO prdVo);
		void deleteProduct(String prdNo);
		ProductVO detailViewProduct(String prdNo);
		String prdNoCheck(String prdNo);
		ArrayList<ProductVO> productSearch(HashMap<String, Object> map);
}
