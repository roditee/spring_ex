package com.di.spring_di_xml_constructor_ex1;

public class TV {
	// 멤버 변수 (필드)로 선언
	Speaker speaker;

	// 객체 new 연산자 통해서 직접 생성하지 않고 생성자를 통해 생성
	public TV(Speaker speaker) {
		this.speaker = speaker;
	}
	
	public void volumeUp() {
		speaker.volumeUp();
	}
	
	public void volumeDown() {
		speaker.volumeDown();
	}
}
