<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
		<title>Home</title>
	</head>
	<body>
		<h1>
			Hello world!  
		</h1>
		<P>  The time on the server is ${serverTime}. </P>
		<img src="/project/resources/image/apple.png"><p/>
		<a href="student/studentForm">학생 등록</a><br><!-- 요청 : student/studentForm 열어달라는 요청 -->
		<a href="product/productForm">상품 등록</a>
	</body>
</html>
