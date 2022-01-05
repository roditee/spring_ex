package com.di.no_spring_no_di;

// 스프링 X, DI X, 의존성만 있는 D
public class NameService {
	// 이름 전달받아서 "내 이름은 ~입니다." 반환하는 메소드
	public String showName(String name) {
		System.out.println("NameService showName() 메소드");
		String myName = "내 이름은 " + name + "입니다.";
		return myName;
	}
}