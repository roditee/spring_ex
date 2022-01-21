<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		
		<!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
		
		<section>
			<h3>프로필 수정</h3>
				<form method="post" action="<c:url value='/updateProfile'/>">
					<table>
						<tr><td>아이디</td><td><input type="text" name="memId" value="${mem.memId}" readonly></td></tr>
						<tr><td>비밀번호</td><td><input type="text" name="memPwd" value="${mem.memPwd}"></td></tr>
						<tr><td>이메일</td><td> <input type="text" name="memName" value="${mem.memName}" readonly></td></tr>
						<tr><td>MBTI</td><td><input type="text" name="memMbti" value="${mem.memMbti}"></td></tr>
						<tr><td>핸드폰번호</td> <td><input type="text" name="memHp" value="${mem.memHp}"></td></tr>
						<tr><td>주소</td> <td><input type="text" name="memAddress1" value="${mem.memAddress1}"></td></tr>
						<tr><td>상세 주소</td> <td><input type="text" name="memAddress2" value="${mem.memAddress2}"></td></tr>
						<tr><td colspan="2"><input type="submit" value="수정"><input type="reset" value="취소"></td></tr>
					</table>
			</form>
		</section>
		
		<!-- BOTTOM -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
	</body>
</html>