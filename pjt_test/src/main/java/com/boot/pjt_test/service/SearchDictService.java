package com.boot.pjt_test.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import com.boot.pjt_test.model.SearchVO;

@Service
public class SearchDictService {
	public ArrayList<SearchVO> main(String ocrText) {
        String clientId = "EHw3CQ20eyYIsHzr3t3K"; //애플리케이션 클라이언트 아이디값"
        String clientSecret = "SPKqwxYquR"; //애플리케이션 클라이언트 시크릿값"
        ArrayList<SearchVO> searchList = new ArrayList<SearchVO>();


        String text = null;
        try {
            text = URLEncoder.encode(ocrText, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("검색어 인코딩 실패",e);
        }


        String apiURL = "https://openapi.naver.com/v1/search/encyc.json?query=" + text + "&display=1&start=1";    // json 결과
        //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과


        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);
        String responseBody = get(apiURL,requestHeaders);


        System.out.println(responseBody);
        
        // JSON 문자열 추출 결과 받음
        searchList = jsonToVoList(responseBody.toString());
        System.out.println("리스트 : " + searchList);
        return searchList;
    }


    private static String get(String apiUrl, Map<String, String> requestHeaders){
        HttpURLConnection con = connect(apiUrl);
        try {
            con.setRequestMethod("GET");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }


            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
                return readBody(con.getInputStream());
            } else { // 에러 발생
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect();
        }
    }


    private static HttpURLConnection connect(String apiUrl){
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection)url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }


    private static String readBody(InputStream body){
        InputStreamReader streamReader = new InputStreamReader(body);


        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();


            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }


            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
    
    
    
    // API 서버로부터 받은 JSON 형태의 결과 데이터를 전달받아 문자형 데이터 추출
 	// SearchVO 리스트 만들어 추출한 문자형 데이터들 저장하고 반환
 	public ArrayList<SearchVO> jsonToVoList(String jsonResultStr){
 		ArrayList<SearchVO> searchList = new ArrayList<SearchVO>();
 		String name, link, description, thumbnail;
 		
 		try {
 			// 추출
 			JSONParser jsonParser = new JSONParser();
 			JSONObject jsonObj = (JSONObject) jsonParser.parse(jsonResultStr);
 			JSONArray itemArray = (JSONArray) jsonObj.get("items");			
 			JSONObject obj0 = (JSONObject) itemArray.get(0);
 			
 			name = (String) obj0.get("title");
 			link = (String) obj0.get("link");
 			description = (String) obj0.get("description");
 			thumbnail = (String) obj0.get("thumbnail");
 			
			// VO에 값 저장
			SearchVO vo = new SearchVO();
			vo.setName(name);		
			vo.setLink(link);
			vo.setDescription(description);
			vo.setThumbnail(thumbnail);
		
			// 리스트에 추가
			searchList.add(vo);
 			
 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
 		
 		return searchList;
 	}
}
