package com.boot.pjt_test.service;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@Service
public class PharmacyInfoService {
	
	public static void main() {
		//int page = 1;
		
		try {
		
				while(true) {
					String url = "http://apis.data.go.kr/B552657/ErmctInsttInfoInqireService/getParmacyFullDown?"
							 + "serviceKey=SYzxJEn%2B9Df5teLVALMYEWoYwSwJZfxR0IoSlDNaetL3nt5gF7SmorlmAf2lB7v%2FI9H8Q5TNsE6gsCmGLPZSSQ%3D%3D&"
							 + "pageNo=1&numOfRows=3";
					
					// 페이지에 접근해줄 document 객체 생성
					// syso -> XML의 최상위 tag 값 출력
					DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
					DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
					Document doc = dBuilder.parse(url);
					doc.getDocumentElement().normalize();
					System.out.println("Root element : " + doc.getDocumentElement().getNodeName());
					
					// 파싱할 정보가 있는 tag에 접근하는 부분
					// nList에 itemList 태그가 하나씩 담기게 되고, getLength()를 통해 리스트의 수 확인 가능
					NodeList nList = doc.getElementsByTagName("item");
					System.out.println("파싱할 리스트 수 : " + nList.getLength());
					
					// 반복문 통해 list에 담긴 데이터 출력
					// getTextContext() : 전체 정보를 의미
					// getTagValue("tag명", element) : 입력한 tag 정보를 의미 (메소드)
					for (int temp=0; temp<nList.getLength(); temp++) {
						Node nNode = nList.item(temp);
						
						if (nNode.getNodeType() == Node.ELEMENT_NODE) {
							Element eElement = (Element) nNode;
							
							System.out.println("----------------------------------------------------");
							System.out.println("주소 : " + getTagValue("dutyAddr", eElement));
							System.out.println("약국이름 : " + getTagValue("dutyName", eElement));
							System.out.println("전화번호 : " + getTagValue("dutyTel1", eElement));
							
							System.out.println("월요일 시작 : " + getTagValue("dutyTime1c", eElement));
							System.out.println("월요일 종료 : " + getTagValue("dutyTime1s", eElement));
							
							System.out.println("화요일 시작 : " + getTagValue("dutyTime2c", eElement));
							System.out.println("화요일 종료 : " + getTagValue("dutyTime2s", eElement));
							
							System.out.println("수요일 시작 : " + getTagValue("dutyTime3c", eElement));
							System.out.println("수요일 종료 : " + getTagValue("dutyTime3s", eElement));
							
							System.out.println("목요일 시작 : " + getTagValue("dutyTime4c", eElement));
							System.out.println("목요일 종료 : " + getTagValue("dutyTime4s", eElement));
							
							System.out.println("금요일 시작 : " + getTagValue("dutyTime5c", eElement));
							System.out.println("금요일 종료 : " + getTagValue("dutyTime5s", eElement));
							
							System.out.println("토요일 시작 : " + getTagValue("dutyTime6c", eElement));
							System.out.println("토요일 종료 : " + getTagValue("dutyTime6s", eElement));
							
							System.out.println("일요일 시작 : " + getTagValue("dutyTime7c", eElement));
							System.out.println("일요일 종료 : " + getTagValue("dutyTime7s", eElement));
							
							System.out.println("공휴일 시작 : " + getTagValue("dutyTime8c", eElement));
							System.out.println("공휴일 종료 : " + getTagValue("dutyTime8s", eElement));
							
							System.out.println("위도 : " + getTagValue("wgs84Lat", eElement));
							System.out.println("경도 : " + getTagValue("wgs84Lon", eElement));
						}
					}
					
					// 페이지
					//page += 1;
					//System.out.println("page number : " + page);
					//if (page > 20) { break; }
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private static String getTagValue(String tag, Element eElement) {
		NodeList nList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		
		Node nValue = (Node) nList.item(0);
		if (nValue == null) {
			return null;
		}
		return nValue.getNodeValue();
	}
}



