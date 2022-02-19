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
public class CrawlerController2 {
	@RequestMapping("/crawerView2")
	public String crawerView2() {
		return "crawerView2";
	}
	
	@RequestMapping(value = "crawling2", method = RequestMethod.GET)
	public String startCrawl2(Model model) throws IOException {

		// url 설정
		String URL = "https://www.pharm114.or.kr/common_files/sub3_page2.asp";
		
		// 사이트 연결 및 데이터 저장 : url로부터 html 문서 가져오기
		Document doc = Jsoup.connect(URL).get();
		
		// 원하는 태그 선택하여 본문 HTML 요소 가져오기
		Elements img1 = doc.select(".b01");
		Elements img2 = doc.select(".b02");
		Elements img3 = doc.select(".b03");
		Elements img4 = doc.select(".b04");
		Elements img5 = doc.select(".b05");
		Elements img6 = doc.select(".b06");
		Elements img7 = doc.select(".b07");

		model.addAttribute("img1", img1);
		model.addAttribute("img2", img2);
		model.addAttribute("img3", img3);
		model.addAttribute("img4", img4);
		model.addAttribute("img5", img5);
		model.addAttribute("img6", img6);
		model.addAttribute("img7", img7);
		
		System.out.println(img1); // 선택한 본문 HTML 요소 그 자체 (태그 포함)
		
		
		// 데이터 파싱 (공백을 기준으로 데이터 나누기)
		// String[] str = elem.text().split(" ");
		// System.out.println(str[0]); // 첫 번째 단어 추출 (문자열)

		return "crawerView2";
	}
}
