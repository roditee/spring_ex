package com.boot.projectEx.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.boot.projectEx.dao.IMemberDAO;
import com.boot.projectEx.model.MemberVO;

@Service
public class MemberService implements IMemberService {
	// MyBatis 사용하는 경우의 DI 설정
	@Autowired
	@Qualifier("IMemberDAO")
	IMemberDAO dao;
		
	@Override
	public MemberVO loginCheck(HashMap<String, Object> map) {
		return dao.loginCheck(map);
	}
	
	@Override
	public String memIdCheck(String memId) {
		return dao.memIdCheck(memId);
	}
}
