package com.di.spring_di_annotation_component;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

// NameController 클래스를 빈으로 등록
// 생성된 빈 이름 = nameController
// NameMain에서 사용
@Component
// 해당 클래스 전체를 빈으로 설정
public class NameController {
	@Autowired
	// @Autowired 해주어야만 nameService 자동 주입 가능(?)????
	INameService nameService;
	
	public void show(String name) {
		System.out.println("NameController : " + nameService.showName(name));
	}
}