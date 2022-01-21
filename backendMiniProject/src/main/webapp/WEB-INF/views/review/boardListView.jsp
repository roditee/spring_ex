<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 게시글 목록</title>
	</head>
	<body>
		<section>
			<h2>리뷰</h2>
			<table border="1" width="600">
				<tr><th>게시글번호</th><th>닉네임</th><th>MBTI</th><th>게시글 제목</th><th>사진</th><th>게시글 내용</th></tr>
			
			   <c:forEach items="${boardList }" var="board">
			   	<tr><td><a href="<c:url value='/board/detailViewBoard/${board.boardNo}'/>">${board.boardNo }</a></td>
		   			<td>${board.memId }</td>
		   			<td>${board.memMbti }</td>
		   			<td>${board.boardTitle }</td>
		   			<td>${board.boardContent }</td>
		   			<td><img src="<c:url value='/images/${board.boardNo}.jpg'/>" width="30" height="20"></td>
			   	</tr>
			   </c:forEach>
			</table>
		</section><br><br>
		<form action="/board/newBoardForm/1">
			<input type="submit" value="리뷰작성" class="styled">
		</form>

	</body>
</html>