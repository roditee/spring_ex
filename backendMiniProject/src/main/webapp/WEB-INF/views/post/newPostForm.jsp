<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 등록 폼</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/postNoCheck.js'/>"></script>
	</head>
	<body>
		<h3>게시글 등록</h3>
		<form method="post" action="<c:url value='/post/insertPost'/>">
			<table>
				<tr><td>게시글 번호</td><td><input type="text" id="postNo" name="postNo">
				       <button id="postNoCheckBtn">중복확인</button></td></tr>
				<tr><td>아이디</td><td><input type="text" name="memId"></td></tr>
				<tr><td>MBTI </td><td> <input type="text" name="memMbti"></td></tr>
				<tr><td>게시글 제목</td><td><input type="text" name="postTitle"></td></tr>
				<tr><td>게시글 내용 </td> <td><input type="text" name="postContent"></td></tr>
				<tr><td>사진 </td> <td><input type="text" name="postImg"></td></tr>
				<tr><td colspan="2"><input type="submit" value="등록"><input type="reset" value="취소"></td></tr>
			</table>
		</form>
	</body>
</html>