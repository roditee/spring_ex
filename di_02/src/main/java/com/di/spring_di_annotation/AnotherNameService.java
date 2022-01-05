package com.di.spring_di_annotation;

public class AnotherNameService implements INameService {

	@Override
	// implements 받는 인터페이스 INameServe의 추상 메서드 오버라이드
	public String showName(String name) {
		System.out.println("AnotherNameService showName() 메소드");
		String myName = "내 이름은 " + name + "입니다.";
		return myName;
	}

}
