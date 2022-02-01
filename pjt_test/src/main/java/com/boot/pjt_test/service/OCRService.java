package com.boot.pjt_test.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import com.boot.pjt_test.model.SearchVO;

@Service
public class OCRService {
	public String clovaOCRService(String filePathName) {
		// API 복사
		String apiURL = "https://rixysypvi3.apigw.ntruss.com/custom/v1/14019/e1301539537a78877f4c9d0e97b801e812fd46d39e68123165c8aff679349631/general";
		String secretKey = "c25va3Z5ZU9ZUnNtUVRzRW5MSnZFWGlvQVNteXN1SVE=";
		String imageFile = filePathName;
		String result = "";

		try {
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection)url.openConnection();
			con.setUseCaches(false);
			con.setDoInput(true);
			con.setDoOutput(true);
			con.setReadTimeout(30000);
			con.setRequestMethod("POST");
			String boundary = "----" + UUID.randomUUID().toString().replaceAll("-", "");
			con.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);
			con.setRequestProperty("X-OCR-SECRET", secretKey);

			JSONObject json = new JSONObject();
			json.put("version", "V2");
			json.put("requestId", UUID.randomUUID().toString());
			json.put("timestamp", System.currentTimeMillis());
			JSONObject image = new JSONObject();
			image.put("format", "jpg");
			image.put("name", "demo");
			JSONArray images = new JSONArray();
			images.put(image);
			json.put("images", images);
			String postParams = json.toString();

			con.connect();
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			long start = System.currentTimeMillis();
			File file = new File(imageFile);
			writeMultiPart(wr, postParams, file, boundary);
			wr.close();

			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();

			System.out.println(response); // API 호출 결과를 콘솔에 출력
			
			// jsonToString() 메소드 호출하고 결과 받아옴
			result = jsonToString(response.toString());
			System.out.println(result); // OCR 인식 결과 (텍스트) 출력
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return result;
	}
	
	private static void writeMultiPart(OutputStream out, String jsonMessage, File file, String boundary) throws
		IOException {
		StringBuilder sb = new StringBuilder();
		sb.append("--").append(boundary).append("\r\n");
		sb.append("Content-Disposition:form-data; name=\"message\"\r\n\r\n");
		sb.append(jsonMessage);
		sb.append("\r\n");
	
		out.write(sb.toString().getBytes("UTF-8"));
		out.flush();
	
		if (file != null && file.isFile()) {
			out.write(("--" + boundary + "\r\n").getBytes("UTF-8"));
			StringBuilder fileString = new StringBuilder();
			fileString
				.append("Content-Disposition:form-data; name=\"file\"; filename=");
			fileString.append("\"" + file.getName() + "\"\r\n");
			fileString.append("Content-Type: application/octet-stream\r\n\r\n");
			out.write(fileString.toString().getBytes("UTF-8"));
			out.flush();
	
			try (FileInputStream fis = new FileInputStream(file)) {
				byte[] buffer = new byte[8192];
				int count;
				while ((count = fis.read(buffer)) != -1) {
					out.write(buffer, 0, count);
				}
				out.write("\r\n".getBytes());
			}
	
			out.write(("--" + boundary + "--\r\n").getBytes("UTF-8"));
		}
		out.flush();
	}
	
	public String jsonToString(String jsonResultStr) {
		String resultText = "";
		
		// API 호출 결과 받은 JSON 형태 문자열에서 텍스트 추출
		// JSONParser  사용하지 않음
		
		// images / 0 / fields / inferText 추출
		JSONObject jsonObj = new JSONObject(jsonResultStr);
		JSONArray imageArray = (JSONArray) jsonObj.get("images");		
		
		if(imageArray != null) {
			JSONObject tempObj = (JSONObject) imageArray.get(0);
			JSONArray fieldArray = (JSONArray) tempObj.get("fields");
			
			if(fieldArray != null) {
				for(int i=0; i<fieldArray.length(); i++) {
					tempObj = (JSONObject) fieldArray.get(i);
					resultText += (String) tempObj.get("inferText") + " ";
				}
			}
		} else {
			System.out.println("없음");
		}		
		
		return resultText;
	}
	
	
	
	// 검색
	public ArrayList<SearchVO> searchMedichine(String ocrText) {
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
 			JSONObject jsonObj = new JSONObject(jsonResultStr);
 			JSONArray imageArray = (JSONArray) jsonObj.get("items");
 			JSONObject obj0 = (JSONObject) imageArray.get(0);
 			
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