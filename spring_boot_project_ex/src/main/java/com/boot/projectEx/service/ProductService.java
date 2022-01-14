package com.boot.projectEx.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.boot.projectEx.dao.IProductDAO;
import com.boot.projectEx.model.ProductVO;

@Service
public class ProductService implements IProductService {
	// Mybatis 사용하는 경우 -> mapper에서는 @Qualifier 써줘야 함
	@Autowired
	@Qualifier("IProductDAO")
	IProductDAO dao;

	@Override
	public ArrayList<ProductVO> listCtgProduct(String ctgId) {		
		return dao.listCtgProduct(ctgId);
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
		return dao.detailViewProduct(prdNo);
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
