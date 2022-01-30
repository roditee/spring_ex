<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>약물 검색</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/search.js'/>"></script>		
		
	</head>
	<body>
		<!--  파일 업로드 -->
		<h3>약물 검색</h3>
		<form id="searchForm" enctype="multipart/form-data">
			<input type="submit" value="약물 검색하기">		
		</form>
		<br><br>
		
		<!-- 결과 출력 (텍스트) -->
		<h3 id="resultH3"></h3>
		<div id="resultDiv"></div>
		<br><br>
		
		<!-- 이미지 출력 (새로운 방법으로 알려줄 것임)  -->
		<div id="image"></div>
		
		<br><br>
		<a href="/">index 페이지로 이동</a>
		
	</body>
</html>