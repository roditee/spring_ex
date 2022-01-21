<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>나의 정보</title>
	</head>
	<body>
	
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
		
		<section>
			<h3>나의 정보</h3>
			<table border="1" width="600">
				<tr><th>아이디</th><th>비밀번호</th><th>이메일</th><th>가입일</th><th>MBTI</th><th>핸드폰번호</th><th>우편번호</th><th>주소</th><th>상세주소</th></tr>
			
			   <c:forEach items="${infoList }" var="info">
			   	<tr><td>${info.memId }</a></td>
			   			<td>${info.memPwd }</td>
			   			<td>${info.memEmail }</td>
			   			<td>${info.memJoinDate }</td>
			   			<td>${info.memMbti }</td>
			   			<td>${info.memHp }</td>
			   			<td>${info.memZipcode }</td>
			   			<td>${info.memAddress1 }</td>
			   			<td>${info.memAddress2 }</td>
			   	</tr>
			   </c:forEach>
			</table><br>
		</section>
		
		<!-- BOTTOM -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		
	</body>
</html>