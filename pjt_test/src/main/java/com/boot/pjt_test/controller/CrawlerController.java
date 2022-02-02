package com.boot.pjt_test.controller;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CrawlerController {
	@RequestMapping("/crawerView")
	public String crawerView() {
		return "crawerView";
	}
	
	@RequestMapping(value = "crawling", method = RequestMethod.GET)
	public String startCrawl(Model model) throws IOException {

		// url 설정
		String URL = "https://terms.naver.com/entry.naver?docId=2136613&cid=51000&categoryId=51000";
		
		// 사이트 연결 및 데이터 저장 : url로부터 html 문서 가져오기
		Document doc = Jsoup.connect(URL).get();
		
		// 원하는 태그 선택하여 본문 HTML 요소 가져오기
		Elements shapeInfo = doc.select("#size_ct #TABLE_OF_CONTENT1+p"); // 외형정보
		Elements ingredientInfo = doc.select("#size_ct #TABLE_OF_CONTENT2+p"); // 성분정보
		Elements storeInfo = doc.select("#size_ct #TABLE_OF_CONTENT3+p"); // 저장방법
		Elements effectInfo = doc.select("#size_ct #TABLE_OF_CONTENT4+p"); // 효능효과
		Elements dosageInfoTxt = doc.select("#size_ct #TABLE_OF_CONTENT5+p"); // 용법용량 txt
		Elements dosageInfoTbl = doc.select("#size_ct #TABLE_OF_CONTENT5+p+p+div.box_tbl"); // 용법용량 tbl
		Elements precautionsInfo1 = doc.select("#size_ct #TABLE_OF_CONTENT6+p"); // 사용상 주의사항 1
		Elements precautionsInfo2 = doc.select("#size_ct #TABLE_OF_CONTENT6+p+p+div.box_tbl"); // 사용상 주의사항 2
		Elements precautionsInfo3 = doc.select("#size_ct #TABLE_OF_CONTENT6+p+p+div.box_tbl+p+p+p"); // 사용상 주의사항 3

		model.addAttribute("shapeInfo", shapeInfo);
		model.addAttribute("ingredientInfo", ingredientInfo);
		model.addAttribute("storeInfo", storeInfo);
		model.addAttribute("effectInfo", effectInfo);
		model.addAttribute("dosageInfoTxt", dosageInfoTxt);
		model.addAttribute("dosageInfoTbl", dosageInfoTbl);
		model.addAttribute("precautionsInfo1", precautionsInfo1);
		model.addAttribute("precautionsInfo2", precautionsInfo2);
		model.addAttribute("precautionsInfo3", precautionsInfo3);
		System.out.println(shapeInfo); // 선택한 본문 HTML 요소 그 자체 (태그 포함)
		
		
		// 데이터 파싱 (공백을 기준으로 데이터 나누기)
		// String[] str = elem.text().split(" ");
		// System.out.println(str[0]); // 첫 번째 단어 추출 (문자열)

		return "crawerView";
	}
}
