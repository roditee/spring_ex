<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 게시글 목록</title>
		<link href="<c:url value='/css/postListView.css'/>" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div id="wrap">
			<!-- top -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
			<section>
				<div id="postListBox">
					<h3>전체 게시글 목록</h3>
					
					<table width="900">
						
						<tr id="firstRow"><th>게시글 번호</th><th>아이디</th><th>MBTI</th><th>게시글 제목</th><th>게시글 내용</th></tr>
					   <c:forEach items="${postList }" var="post">
					   	<tr class="rows"><td class="postNo"><a href="<c:url value='/post/detailViewPost/${post.postNo}'/>">${post.postNo }</a></td>
				   			<td>${post.memId }</td>
				   			<td>${post.memMbti }</td>
				   			<td>${post.postTitle }</td>
				   			<td>${post.postContent }</td>
					   	</tr>
					   </c:forEach>
					</table>
				</div>
			</section>
			
			<!-- bottom -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		</div>
	</body>
</html>