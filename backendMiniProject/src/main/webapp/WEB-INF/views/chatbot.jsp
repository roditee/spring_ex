<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">		
		<title>응용 예제 : 챗봇 대화창</title>
		<link href="<c:url value='/css/chatbot.css'/>" rel="stylesheet" type="text/css">	
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/chatbot.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<!-- Header -->
			<div id= "chatHeader">
				<span>kiri 고객센터</span>
				<button id="closeBtn">닫기(X)</button>
			</div>
			
			<!-- 대화 내용 출력 영역  -->
			<div id="chatBox"></div>
			
			<!-- 질문 입력하기 위한 폼 -->
			<div>
				<form id="chatForm" method="post">
					<input type="text" id="message" name="message" size="30"
								placeholder="질문을 입력하세요" autofocus>
					<input type="submit" id='submitBtn' value="전송">
				</form>
			</div>
		</div>
	</body>
</html>