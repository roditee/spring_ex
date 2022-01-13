package com.boot.projectEx.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.projectEx.model.MemberVO;

public interface IMemberService {
	MemberVO loginCheck(HashMap<String, Object> map); // 로그인
	String memIdCheck(String memId); // id 중복 확인
}
