<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Student Result</title>
	</head>
	<body>
			<h3>학생 정보 등록 결과</h3>
			학번 : ${no } <br>
			성명 : ${name } <br>
			학년 : ${year } 
			
			<br><br>
			url을 통한 데이터 전송 <br>
			<a href="/project/student/studentModify/${no }">${no }</a>
	</body>
</html>