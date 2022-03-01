<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<body>
		index.jsp입니다.<br><br>
		
		<a href="clovaOCRForm">약물 검색 OCR</a>
		<br><br>
		
		<a href="crawerView">크롤링</a>
		<br><br>
		
		<hr>
		<a href="search">검색</a>
		<br><br>
		
		<hr>
		<a href="webNotification">알림</a>
		<br><br>
		
		<hr>
		<a href="calendarView">캘린더</a>
		<br><br>
		
		<hr>
		<a href="notificationTest">알림</a>
		<br><br>
		
		<hr>
		<a href="crawerView2">크롤링2</a>
		<br><br>
		
		
		
		
	<input type="button" onClick="sendLinkCustom();" value="Custom"/>
    <input type="button" onClick="sendLinkDefault();" value="Default"/>

	<script type="text/javascript">
	    function sendLinkCustom() {
	        Kakao.init("b3bc39226c10ad1e0663733a444b7b1d");
	        Kakao.Link.sendCustom({
	            templateId: 71421
	        });
	    }
	</script>
	
	<script>
	try {
	  function sendLinkDefault() {
	    Kakao.init('b3bc39226c10ad1e0663733a444b7b1d')
	    Kakao.Link.sendDefault({
	      objectType: 'text',
	      text: '텍스트. 최대 200자',
	      link: { // 콘텐츠 클릭 시 이동할 링크 정보 :  [내 애플리케이션] > [플랫폼] > [Web]에서 등록한 사이트 도메인과 일치해야 함
	          mobileWebUrl: 'https://developers.kakao.com',
	          webUrl: 'https://developers.kakao.com',
	      },
	      buttons: [
	        {
	          title: '상세보기',
	          link: {
	            mobileWebUrl: 'http://localhost:8080/',
	            webUrl: 'http://localhost:8080/',
	          },
	        },
	      ],
	    })
	  }
	; window.kakaoDemoCallback && window.kakaoDemoCallback() }
	catch(e) { window.kakaoDemoException && window.kakaoDemoException(e) }
	</script>
	</body>
</html>