package com.di.no_spring_di_constructor;

public class NameController {
	// 멤버 변수(필드)로 선언 해 놓고 생성자에서 초기화
	NameService nameService;
	// NameService 객체를 new 연산자를 통해서 직접 만들지 않고
	// 생성자를 통해서 객체를 전달받음
	// 의미 : 생성자를 통해서 외부에서 주입 받음 (injection)
	// 의존성 주입

	// 생성자
	public NameController(NameService nameService) {
		// 외부에서 전달받아서 멤버 변수 초기화
		this.nameService = nameService;
	}
	
	// 이름을 전달받아서 NameService클래스의 showName() 메소드에게 전달하고
	// "내 이름은 ~입니다." 전달받아서 출력하는 메소드
	public void show(String name) {
		System.out.println("NameController : " + nameService.showName(name));
	}
	
}
