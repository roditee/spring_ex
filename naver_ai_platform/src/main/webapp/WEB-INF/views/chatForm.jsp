<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>chatbot</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/chatbot.js'/>"></script>
	</head>
	<body>
		<h3>chatbot</h3>
		<form id="chatForm" enctype="multipart/form-data">
			<input type="text" id="message" name="message" size="30" placeholder="질문을 입력하세요">
			<input type="submit" value="전송">
		</form>
		<br><br>
		
		<!-- 응답 메시지 출력 -->
		<div id="chatBox"></div>
		
		<br><br>
		<a href="/">index 페이지로 이동</a>
	</body>
</html>