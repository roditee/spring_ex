package com.di.spring_di_xml_setter_ex1;

public class TV {
	// 멤버 변수 (필드)로 선언
	Speaker speaker;

	// 생성자 없고
	// Setter 메소드를 통해서 외부에서 주입 받음
	public void setSpeaker(Speaker speaker) {
		this.speaker = speaker;
	}
	
	public void volumeUp() {
		speaker.volumeUp();
	}

	public void volumeDown() {
		speaker.volumeDown();
	}
}
