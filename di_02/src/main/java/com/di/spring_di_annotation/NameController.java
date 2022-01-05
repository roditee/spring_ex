package com.di.spring_di_annotation;

import javax.annotation.Resource;

public class NameController {
	// 인터페이스 타입으로 선언
	// @Autowired 어노테이션 사용해서 nameService 빈을 자동으로 주입
	// 해당 타입의 빈을 찾아서 필드(변수)에 할당
	// @Autowired
	// @Qualifier("anotherNameService")
	// @Qualifier("bNameService")로 설정해주면 BNameService 실행됨
	// @Resource(name="anotherNameService")
	@Resource()
	INameService nameService;
	
	public void setNameService(INameService nameService ) {
		this.nameService = nameService;
	}
	
	public void show(String name) {
		System.out.println("NameController : " + nameService.showName(name));
	}
}