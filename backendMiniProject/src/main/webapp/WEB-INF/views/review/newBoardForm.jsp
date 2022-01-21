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
		<h3>리뷰 등록</h3>
		<form method="post" action="<c:url value='/board/insertBoard'/>">
			<table>
				<tr><td>작성자</td><td><input type="text" name="memId" value="${board.memId}"></td></tr>
				<tr><td>MBTI </td><td> <input type="text" name="memMbti" value="${board.memMbti}"></td></tr>
				<tr><td>게시글 제목</td><td><input type="text" name="boardTitle"></td></tr>
				<tr><td>게시글 내용 </td> <td><input type="text" name="boardContent"></td></tr>
				<tr><td>사진 </td> <td><input type="text" name="boardImg"></td></tr>
				<tr><td colspan="2"><input type="submit" value="등록"><input type="reset" value="취소"></td></tr>
			</table>
		</form>
	</body>
</html>