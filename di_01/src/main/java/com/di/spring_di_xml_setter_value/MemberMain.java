package com.di.spring_di_xml_setter_value;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MemberMain {

	public static void main(String[] args) {
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-context6.xml");
		
		Member member = context.getBean("member", Member.class);
		
		System.out.println(member); // toString() 자동 호출
		member.showBMI();
		
		
		// 싱글톤 확인
		// member 빈으로 member2 객체(인스턴스) 생성
		Member member2 = context.getBean("member", Member.class);
		
		// member와 member2가 동일한 객체인지 비교
		// application-context6.xml 의 
		// <bean id="member" class="com.di.spring_di_xml_setter_value.Member" scope="prototype">
		// 와 같이 scope 속성 값에 따라 true/false 결정됨 (default : singleton)
		System.out.println(member == member2);
		context.close();
	}

}
