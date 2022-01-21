<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	   	<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>My Feed</title>
			<link href="<c:url value='/css/myFeed.css'/>" rel="stylesheet" type="text/css">	
			<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
			<script src="<c:url value='/js/myFeed.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
			<section>
	            <article>
	                <div id="profile">
	                    <h2 id="feedTitle">My Feed</h2><hr/>
	                    <div id="profileGroup">
	                        <div id="profileImgGroup">
	                            <img id="profileImg"src="./image/mbtiCtgItems01.png"/>
	                            <div id="profileEdit"><div><i class="fas fa-palette"></i>&nbsp;&nbsp;<span>미니미 수정</span></div></div>
	                        </div>
	                        <div id="profileInfoGroup">
	                            <div id="profileInfo">
	                                <h1>user01</h1>
	                                <div id="followGroup">
	                                    <h3>팔로워 <span>0</span></h3>&nbsp;&nbsp;&nbsp;
	                                    <h3>팔로잉 <span>0</span></h3>
	                                </div>
	                            </div>
	                            <div id="profileKeyword">
	                                    <a href="<c:url value='/updateProfileForm/${mem.memId }'/>">프로필 수정</a>
	                                <div id="myKeywordGroup">
	                                    <button class="myKeyword">사교적</button>
	                                    <button class="myKeyword">활동적</button>
	                                    <button class="myKeyword">폭 넓은 대인관계</button>
	                                    <button class="myKeyword">논리적</button>
	                                    <button class="myKeyword">생각이 너무 많음</button>
	                                    <button class="myKeyword">분석적</button>
	                                    <button class="myKeyword">감정 표현을 못 함</button>
	                                    <button class="myKeyword">계획적</button>
	                                    <button class="myKeyword">남들 시선을 신경씀</button>
	                                    <button class="myKeyword">정의로움</button>
	                                    <button class="myKeyword">자기 주장 강함</button>
	                                    <button class="myKeyword">독창적</button>
	                                    <button class="myKeyword">배려가 많음</button>
	                                    <button class="myKeyword">책임감이 강함</button>
	                                    <button class="myKeyword">현실적</button>
	                                    <button class="myKeyword">호기심 많음</button>
	                                    <button class="myKeyword">모든 일에 의미 부여함</button>
	                                    <button class="myKeyword">갈등을 싫어함</button>
	                                    <button class="myKeyword">걱정이 많음</button>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </article>
	            <article>
	                <div id="profileMusic">
	                    <h1>프로필 뮤직</h1>
	                    <div id="musicBtnGroup">
	                        <input type="button" class="musicBtn" id="musicPlay" value="PLAY">
	                        <input type="button" class="musicBtn" id="musicPause" value="PAUSE">
	                    </div>
	                </div>
	            </article>
	            <article>
	                <div id="wishGroup">
	                    <h1>찜 목록</h1>
	                    <div id="wishBtnGroup">
	                        <img id="prevWish" src="image/prevButton.png">
							<img id="nextWish" src="image/nextButton.png">
	                    </div>
	                    <div id="wishList">
	                        <a href="/post"><img class="wishItems" src="image/itemsImg00.jpg"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg03.png"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg05.jpg"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg19.jpg"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg11.jpg"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg14.jpg"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg07.jpeg"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg02.jpg"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg06.jpeg"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg17.png"></a>
	                        <a href="/post"><img class="wishItems" src="image/itemsImg15.jpg"></a>
	                    </div>
	                </div>
	            </article>
	            <article>
	                <div id="myPostGroup">
	                    <h1>내 게시글</h1>
	                    <div id="postList">
	                        <a href="/post"><img class="postItems" src="image/itemsImg18.png"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg15.jpg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg11.jpg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg01.jpg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg10.jpeg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg03.png"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg06.jpeg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg02.jpg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg00.jpg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg08.jpeg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg07.jpeg"></a>
	                        <a href="/post"><img class="postItems" src="image/itemsImg13.jpg"></a>
	                    </div>
	                    <div id="seeMoreBox"><button id="seeMore">See More</button></div>
	                </div>
	            </article>
	        </section>
	        
	        <!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
			
		</div>
	</body>
</html>