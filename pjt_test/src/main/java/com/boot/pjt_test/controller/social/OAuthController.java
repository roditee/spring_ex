package com.boot.pjt_test.controller.social;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.boot.pjt_test.service.KakaoApiService;

@RestController
//@AllArgsConstructor
@RequestMapping("/oauth")
public class OAuthController {
	@Autowired
    private KakaoApiService KakaoApiService;
	
	// -------------- 1. 인증 코드 요청 및 인증 코드 전달 --------------
	@GetMapping(value="/loginForm")
    public String kakaoConnect() {

        StringBuffer url = new StringBuffer(); //  'pillyo 카카오계정으로 로그인' 페이지 접속 url
        url.append("https://kauth.kakao.com/oauth/authorize?");
        url.append("client_id=" + "4ebb9f4e8cf51f3161068880d9a09feb");
        url.append("&redirect_uri=http://localhost:8080/oauth/kakao/");
        url.append("&response_type=code");

        return "redirect:" + url.toString();
        // https://kauth.kakao.com/oauth/authorize?client_id=4ebb9f4e8cf51f3161068880d9a09feb&redirect_uri=http://localhost:8080/oauth/kakao/&response_type=code
    }
	
	// 내가 짠 코드가 카카오에게 전송되어 redirect uri로 콜백됨
	// 콜백한 것을 받는 코드 (아래)
	
//    @ResponseBody
    @GetMapping("/kakao")
    public String kakaoCallback(@RequestParam("code")String code, RedirectAttributes ra, HttpSession session, HttpServletResponse response, Model model)throws IOException {
        System.out.println(code);
        // '동의' 눌렀을 때 : 지정해준 redirect 경로로 code를 실어서 이동함
        // 인증 코드 요청 및 코드 잘 들어온 것 확인 완료
        
        
        // -------------- 2. 인증 코드로 토큰 요청 및 토큰 전달 | (인가코드:code) (인가토큰:access token)--------------
        // 사용자 토큰 받기 (Access Token, Refresh Token)
        // Access Token : 사용자가 로그인 인증에 성공했을 시 부여되는 토큰 (수명 하루 미만)
        // Refresh Token : 사용자가 로그인 인증에 성공했을 시 부여되는 토큰 (수명 보통 적게 2주 ~ 길게 한달. Access Token 수명 만료 시 Access Token 갱신 목적으로 사용, 일반적으로 서버측 DB 또는 클라이언트 측 쿠키에 보관)
        String access_Token = KakaoApiService.getAccessToken(code);
        System.out.println("controller access_token : " + access_Token);
        // 결과 200 출력 : 클라이언트로부터 카카오 로그인 요청 받아 카카오 API로부터 인증코드 부여받음 -> 인증코드 이용해서 사용자 토큰 얻어오기 성공
        
        
     // 발급받은 Access Token을 이용해 사용하고자 하는 회원 정보 받아오기
        HashMap<String, Object> userInfo = KakaoApiService.getUserInfo(access_Token);
        System.out.println("login Controller : " + userInfo);
        
        //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
        if (userInfo.get("email") != null) {
            session.setAttribute("userId", userInfo.get("email"));
            session.setAttribute("access_Token", access_Token);
        }
        
        return "social/socialResult";
    }
    
    
    
    
 
    // 로그아웃
    // https://kapi.kakao.com/v1/user/logout 경로를 통해
    // 헤더에 Authorization : "Bearer {access_Token}" 을 포함하여 요청하면
    // 로그아웃을 수행한 클라이언트의 아이디를 반환
//    @RequestMapping(value="/logout")
//    public String logout(HttpSession session) {
//    	KakaoApiService.kakaoLogout((String)session.getAttribute("access_Token"));
//        session.removeAttribute("access_Token");
//        session.removeAttribute("userId");
//        return "index";
//    }

    
    // -------------- 3. 토큰으로 API 호출 (토큰 유효성 확인) 및 응답 전달 --------------
}