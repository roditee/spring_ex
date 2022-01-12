<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Index 페이지</title>
	</head>
	<body>
		<h3>Index 페이지입니다.</h3>
		<a href="<c:url value='product/listAllProduct'/>">전체 상품 조회</a><br><br>
		<a href="product/newProductForm">상품 등록</a><br><br>
		<a href="product/productSearchForm">상품 검색</a><br><br>
		
		<a href="fileUploadForm">파일 업로드</a><br><br>
		<a href="fileDownloadList">파일 다운로드</a><br><br>
		
		<img src="/image/apple.png">
	</body>
</html>