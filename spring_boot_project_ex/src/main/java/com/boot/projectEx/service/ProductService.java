package com.boot.projectEx.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.boot.projectEx.model.ProductVO;

@Service
public class ProductService implements IProductService {

	@Override
	public ArrayList<ProductVO> listCtgProduct(String ctgId) {
		return null;
	}

	@Override
	public ArrayList<ProductVO> listAllProduct() {
		return null;
	}

	@Override
	public void insertProduct(ProductVO prdVo) {

	}

	@Override
	public void updateProduct(ProductVO prdVo) {

	}

	@Override
	public void deleteProduct(String prdNo) {

	}

	@Override
	public ProductVO detailViewProduct(String prdNo) {
		return null;
	}

	@Override
	public String prdNoCheck(String prdNo) {
		return null;
	}

	@Override
	public ArrayList<ProductVO> productSearch(HashMap<String, Object> map) {
		return null;
	}

}
