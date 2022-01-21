package com.ai.ex.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ai.ex.model.CelebrityVO;
import com.ai.ex.model.FaceVO;
import com.ai.ex.service.CFRCelebrityService;
import com.ai.ex.service.CFRFaceRecogService;

@Controller
public class APIController {
	@Autowired
	private CFRCelebrityService cfrServiceCel;
	
	@Autowired
	private CFRFaceRecogService cfrRecogService;
	
	// index 페이지로 이동
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	// (1) 유명인 얼굴인식 API 호출 : 결과를 콘솔에 출력
//	@RequestMapping("/faceRecogCel")
//	public String  faceRecogCel() {
//		cfrServiceCel.clovaFaceRecogCel();	
//		return "celebrityView";
//	}
	
	// 변경
	
	// (2) 유명인 얼굴인식 API 호출 결과 CelebrityVO 리스트 받아서
	// Model에 담아 view 페이지에 전달
//	@RequestMapping("/faceRecogCel")
//	public String  faceRecogCel(Model model) {
//		ArrayList<CelebrityVO> celList = new ArrayList<CelebrityVO>();
//		
//		// 서비스에서 반환된 CelebrityVO 리스트 저장
//		celList = cfrServiceCel.clovaFaceRecogCel();
//		
//		//Model에 "celList" 이름으로 저장 -> view 페이지로 전달
//		model.addAttribute("celList", celList);
//		
//		return "celebrityView";
//	}
	
	@RequestMapping("/faceRecogCelForm")
	public String faceRecogCelForm() {
		return "celebrityView";
	}

	// (3) 파일 업로드 다운로드 추가
	@RequestMapping("/faceRecogCel")
	public String  faceRecogCel(@RequestParam("uploadFile") MultipartFile file,			
													 Model model) throws IOException {		
		
		// 1. 파일 저장 경로 설정 : 실제 서비스되는 위치 (프로젝트 외부에 저장)
		String uploadPath = "C:/upload/";
		
		// 2. 원본 파일 이름 알아오기
		String originalFileName = file.getOriginalFilename();
		String filePathName = uploadPath + originalFileName;
		
		// 3. 파일 생성
		File file1 = new File(filePathName);
		
		// 4. 서버로 전송
		file.transferTo(file1);	
		
		
		ArrayList<CelebrityVO> celList = new ArrayList<CelebrityVO>();
		
		// 서비스에 파일 path와 파일명 전달  -> 서비스 메소드에서 변경
		// 서비스에서 반환된 CelebrityVO 리스트 저장
		celList = cfrServiceCel.clovaFaceRecogCel(filePathName);
		
		//Model에 "celList" 이름으로 저장 -> view 페이지로 전달
		model.addAttribute("celList", celList);
		model.addAttribute("fileName", originalFileName);
		
		return "celebrityView";
	}
	
	
	
	
	
	// (1) 얼굴 감지 API 호출 : 결과를 콘솔에 출력 
//	@RequestMapping("/faceRecog")
//	public void faceRecog() {
//		cfrRecogService.faceRecog();
//	}
	
	
	@RequestMapping("/faceRecogForm")
	public String faceRecogForm() {
		return "faceRecogView";
	}
	
	// (3) 파일 업로드 다운로드 추가
		@RequestMapping("/faceRecog")
		public String  faceRecog(@RequestParam("uploadFile") MultipartFile file,			
														 Model model) throws IOException {		
			
			// 1. 파일 저장 경로 설정 : 실제 서비스되는 위치 (프로젝트 외부에 저장)
			String uploadPath = "C:/upload/";
			
			// 2. 원본 파일 이름 알아오기
			String originalFileName = file.getOriginalFilename();
			String filePathName = uploadPath + originalFileName;
			
			// 3. 파일 생성
			File file1 = new File(filePathName);
			
			// 4. 서버로 전송
			file.transferTo(file1);	
			
			ArrayList<FaceVO> faceList = new ArrayList<FaceVO>();
			
			// 서비스에 파일 path와 파일명 전달  -> 서비스 메소드에서 변경
			// 서비스에서 반환된 CelebrityVO 리스트 저장
			faceList = cfrRecogService.faceRecog(filePathName);
			
			//Model에 "celList" 이름으로 저장 -> view 페이지로 전달
			model.addAttribute("faceList", faceList);
			model.addAttribute("fileName", originalFileName);
			
			return "faceRecogView";
		}
}
