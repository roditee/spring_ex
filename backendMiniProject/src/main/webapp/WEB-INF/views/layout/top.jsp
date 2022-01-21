<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>KIRRIKKIRI : MBTI 기반 정보 공유</title>
	    <link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css">
	    <link href="<c:url value='/css/menu.css'/>" rel="stylesheet" type="text/css">	
	    <link href="<c:url value='/css/mainBanner.css'/>" rel="stylesheet" type="text/css">	
	    <link href="<c:url value='/css/section.css'/>" rel="stylesheet" type="text/css">
	    <link href="<c:url value='/css/postDetailView.css'/>" rel="stylesheet" type="text/css">
	    <link href="<c:url value='/css/productDetailView.css'/>" rel="stylesheet" type="text/css">
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/main.js'/>"></script>
		<script src="<c:url value='/js/menu.js'/>"></script>
		<script src="<c:url value='/js/chatbot.js'/>"></script>
		<script src="<c:url value='/js/mainBanner.js'/>"></script>
		<script src="<c:url value='/js/zoomImage.js'/>"></script>
	    <script src="<c:url value='/js/mainImg.js'/>"></script>
	    <script src="<c:url value='/js/modal.js'/>"></script> 
	    <script src="<c:url value='/js/moveScreen.js'/>"></script> 
	    <script src="<c:url value='/js/selectBox.js'/>"></script>
	    <script src="<c:url value='/js/cart.js'/>"></script>
	    <script src="<c:url value='/js/cartListView.js'/>"></script>
	    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
    </head>
	<body>
		<header>
			<div id="header">
				<div id="mainLogo"><a href="<c:url value='/'/>"><h2>KIRRIKKIRI</h2></a></div>
            	<div id="userManageBtn">
            		<!-- 메뉴 : 로그인 하지 않은 경우  -->
								<c:if test="${empty sessionScope.sid }">
									<a href="<c:url value='/storeHome'/>">STORE</a>
									<a href="<c:url value='/mbtiInfo'/>">MBTI</a>
					                <a href="<c:url value='/join'/>">Join</a>
					                <a href="<c:url value='/login'/>">Login</a>
								</c:if>
						
								<!-- 메뉴 : 로그인 한 경우  -->	
								<c:if test="${not empty sessionScope.sid}">
									<a href="<c:url value='/logout'/>">로그아웃</a>
									<a href="<c:url value='/product/cartList'/>">장바구니</a>
									<a href="<c:url value='/storeHome'/>">STORE</a>
									<a href="<c:url value='/mbtiInfo'/>">MBTI</a>
									<a href="<c:url value='/myFeed'/>">${sessionScope.sid}'s Feed</a>
								</c:if>
                	
                </div>
            </div>
		</header>
	
        <nav>
            <div class="menu-btn">
                <div class="line line--1"></div>
                <div class="line line--2"></div>
                <div class="line line--3"></div>
            </div>

            <div class="nav-links">
                <ul id="menuGroup">
                    <li class="menu link"><a href="#">NOTICE</a>
                        <ul class="hide">
                            <li class="subMenu"><a href="<c:url value='/'/>">HOME</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">공지사항</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">EVENT</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">FAQ</a></li>
                        </ul>
                    </li>
                    <li class="menu link"><a href="#">KIRRI'S</a>
                        <ul class="hide">
                            <li class="subMenu"><a href="#hotItemsSection">인기 게시글</a></li>
                            <li class="subMenu"><a href="#KIRRIRecommendSection">KIRRI 추천 게시글</a></li>
                            <li class="subMenu"><a href="<c:url value='/mbtiInfo'/>">MBTI 유형별 특징</a></li>
                        </ul>
                    </li>
                    <li class="menu link"><a href="#">FEED</a>
                        <ul class="hide">
                        		<li class="subMenu"><a href="/post/listAllPost">게시글 전체보기</a></li>
                            <li class="subMenu"><a href="post/newPostForm">글쓰기</a></li>
                            <li class="subMenu"><a href="/post/postSearchForm">검색</a></li>
                        </ul>
                    </li>
                    <li class="menu link"><a href="#">mbti메뉴</a>
                        <ul class="hide">
                            <li class="subMenu"><a href="<c:url value='/'/>">INTJ</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">INTP</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ENTJ</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ENTP</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">INFJ</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">INFP</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ENFJ</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ENFP</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ISTJ</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ISFJ</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ESTJ</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ESFJ</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ISTP</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ISFP</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ESTP</a></li>
                            <li class="subMenu"><a href="<c:url value='/'/>">ESFP</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
	</body>
</html>