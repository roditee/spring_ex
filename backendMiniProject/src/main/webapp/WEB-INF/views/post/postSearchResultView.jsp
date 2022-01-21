<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 검색 결과</title>
	</head>
	<body>
		<div id="wrap">
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
			<section>
				<h3>게시글 검색 결과</h3>
				<table border="1" width="600">
					<tr><th>게시글 번호</th><th>아이디</th><th>MBTI</th><th>게시글 제목</th><th>게시글 내용</th></tr>
	
					<c:choose>
						<c:when test="${empty postList}">
							<tr align="center"><td colspan="6">일치하는 검색 결과가 없습니다.</td></tr>
						</c:when>
						<c:otherwise>
						   <c:forEach items="${postList }" var="post">
							   	<tr><td><a href="<c:url value='/post/detailViewPost/${post.postNo}'/>">${post.postNo }</a></td>
						   			<td>${post.memId }</td>
						   			<td>${post.memMbti }</td>
						   			<td>${post.postTitle }</td>
						   			<td>${post.postContent }</td>
							   	</tr>
						   </c:forEach>
						</c:otherwise>
				    </c:choose>
				</table>
			</section>
		  
		  <!-- bottom -->
		  <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		</div>
	</body>
</html>