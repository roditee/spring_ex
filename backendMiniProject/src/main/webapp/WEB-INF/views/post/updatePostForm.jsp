<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 수정</title>
		<link href="<c:url value='/css/update.css'/>" rel="stylesheet" type="text/css">
	</head>
	<body>
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
			<section>
				<div id="h3"><h3>게시글 수정</h3></div>
				<div id="A">
					<form method="post" action="<c:url value='/post/updatePost'/>">
						<table class="B">
							<tr><td>게시글 번호</td><td><input type="text" name="postNo" value="${post.postNo}" readonly></td></tr>
							<tr><td>아이디</td><td><input type="text" name="memId" value="${post.memId}"></td></tr>
							<tr><td>MBTI </td><td> <input type="text" name="memMbti" value="${post.memMbti}"></td></tr>
							<tr><td>게시글 제목</td><td><input type="text" name="postTitle" value="${post.postTitle}"></td></tr>
							<tr><td>게시글 내용</td> <td><input type="text" name="postContent" value="${post.postContent}"></td></tr>
							<tr><td>사진</td> <td><input type="text" name="postImg" value="${post.postImg}"></td></tr>
							<tr><td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;&nbsp;<input type="reset" value="취소"></td></tr>
						</table>
					</form>
				</div>
			</section>
			
			<!-- bottom -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
	</body>
</html>