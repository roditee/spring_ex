package com.di.spring_di_xml_constructor;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class NameMain {

	public static void main(String[] args) {
		// 스프링 컨테이너 생성
		AbstractApplicationContext context = new GenericXmlApplicationContext("application-context.xml");
		
		// 컨테이너에서 컴포넌트(빈) 가져옴 : getBean() 사용
		NameController controller = context.getBean("nameController", NameController.class);
		controller.show("변학도");
		context.close();
	}

}
