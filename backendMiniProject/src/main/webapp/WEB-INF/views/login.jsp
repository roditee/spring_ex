<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KIRRIKKIRI 로그인</title>
    <link href="<c:url value='/css/login.css'/>" rel="stylesheet" type="text/css">	
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/login.js'/>"></script>
    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
	</head>
	<body>
    <div id="wrap">
        
        <!-- TOP -->
		<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>

        <section id="login">
            <div id="loginHeader">
                <img id="loginLogoImg" src="./image/KIRRI.png">
            </div>
            <form id="loginForm">
                <p id="loginError"></p>
                <input type="text" name="id" id="id" placeholder="아이디">
                <input type="password" name="pwd" id="pwd" placeholder="비밀번호">
                <input type="submit" name="submit" id="submit" value="로그인">
            </form>
            <div id="loginAnchor">
                <a href="#">아이디/비밀번호 찾기</a>
                <a href="/join">회원가입</a>
            </div>
            <div id="socialLiogin">
                <p>social Login</p>
                <div id="socialLoginBtn">
                    <a href="https://about.facebook.com/ko/" target="_blank" class="socialBtn"><i class="fab fa-facebook"></i></a>
                    <a href="https://www.google.co.kr/" target="_blank" class="socialBtn"><i class="fab fa-google"></i></a>
                    <a href="https://twitter.com/?lang=ko" target="_blank" class="socialBtn"><i class="fab fa-twitter"></i></a>
                </div>
            </div>
        </section>

        <!-- BOTTOM -->
		<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		
    </div>
	</body>
</html>