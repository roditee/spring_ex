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
		<link href="<c:url value='/css/sub_post.css'/>" rel="stylesheet" type="text/css">	
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/subPost.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
			<section>
	            <article>
	                <div id="A1">
	                        <h2>hyov_vely</h2>
	                </div>
	            </article>
	            <article>
	                <div id="Post">
	                    <div class="PostGroup">
	                        <section id="PostGroupItems1">
	                            <div id="prevNextBtnGroup">
	                                <img id="prevBtn1" src="image/prevButton.png">
	                                <img id="nextBtn1" src="image/nextButton.png">
	                            </div>
	                        <div id="PictureGroup">
	                            <div id="Picture">
	                                <img class="banner" src="image/fashion12.jpeg">
	                                <img class="banner" src="image/fashion11.jpeg">
	                                <img class="banner" src="image/fashion10.jpeg">
	                                <img class="banner" src="image/fashion9.jpeg">
	                                <img class="banner" src="image/fashion16.png">
	                            </div>
	                        </div>
	                            <div class="PictureminiGroup">
	                                <div class="PictureminiItems">
	                                    <img src="image/fashion12.jpeg" class="bannerControl">
	                                </div>
	                                <div class="PictureminiItems">
	                                    <img src="image/fashion11.jpeg" class="bannerControl">
	                                </div>
	                                <div class="PictureminiItems">
	                                    <img src="image/fashion10.jpeg" class="bannerControl">
	                                </div>
	                                <div class="PictureminiItems">
	                                    <img src="image/fashion9.jpeg" class="bannerControl">
	                                </div>
	                                <div class="PictureminiItems">
	                                    <img src="image/fashion16.png" class="bannerControl">
	                                </div>
	                            </div>
	                            </section>
	
	
	                            <!-- <div id="loginHeader">
	                                <img id="loginLogoImg" src="./image/KIRRI.png"><span id="loginLogoText">Login</span>
	                            </div> -->
	                        <aside id="PostGroupItems2">
	                            <div id="profile">
	                                <span><img align="left" src="image/mbtiCtgItems07.png"></span>
	                            </div>
	
	                            <div id="profilee">
	                                    <span><h2><br>코끼리</h2><span>
	                                        <span id="profile1">
	                                        <h2>ENFJ</h2>게시물 6 팔로워 35.4K 팔로잉 1
	                                        </span>
	                            </div><br><br>
	
	                                    <aside id="Profile1"><h3>&nbsp;<button id = "btn1"><a href="./sub_myFeed.html"><h3>프로필 편집</button></h3></a>
	                                        <h3><br>끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리
	                                        끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리
	                                        끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리
	                                        끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리끼리
	                                        </h3><br><br>
	                                        <h2>#끼리끼리 #코끼리 #ENFJ #바다 #여행 #먹방 </h2>
	                                    </aside>
	                            
	                                <div id="Profile2">
	                                    <!-- <h3>팔로워 <span>0</span></h3>&nbsp;&nbsp;&nbsp;
	                                    <h3>팔로잉 <span>0</span></h3>
	                                    <h3>댓글</h3> -->
	                                <div id="profile2">
	                                    <br><h2>좋아요 <button id = "btn"><h2>❤︎</h2></button></h2>
	                                </div>
	                                    <!-- 버튼 디스플레이 인라인 -->
	                                    <h3>댓글</h3><br>
	                                    <h4>gomdomii 바보바보바보바보바보바보바보 😛 <br>
	                                        dhalbabe 바다 이뻐요 !!!! 🙄<br>
	                                        tmdrllee 저도 좀 데려가주세요.. 🥺 🥺 🥺<br>
	                                        chlwnsct_ WOW 🙄<br>
	                                    </h4>
	                                    
	
	                                </div>
	                            
	                        
	                        </aside>
	                    </div>
	                </div>
	            </article>
	            
	            <article>
	            <div id="Postmini">
	                <h2>이 게시글을 찜한 다른 사용자의 게시글</h2>
	                <div class="PostminiGroup">
	                    <div class="PostminiItems">
	                        <a href="sub_myFeed.html"><img src="image/fashion1.jpg"></a>
	                    </div>
	                    <div class="PostminiItems">
	                        <a href="sub_myFeed.html"><img src="image/fashion2.jpg"></a>
	                    </div>
	                    </a>
	                    <div class="PostminiItems">
	                        <a href="sub_myFeed.html"><img src="image/fashion3.jpg"></a>
	                    </div>
	                    <div class="PostminiItems">
	                        <a href="sub_myFeed.html"><img src="image/fashion4.jpeg"></a>
	                    </div>
	                    <div class="PostminiItems">
	                        <a href="sub_myFeed.html"><img src="image/fashion5.jpeg"></a>
	                    </div>
	                    <div class="PostminiItems">
	                        <a href="sub_myFeed.html"><img src="image/fashion6.jpeg"></a>
	                    </div>
	                    <div class="PostminiItems">
	                        <a href="sub_myFeed.html"><img src="image/fashion7.jpeg"></a>
	                    </div>
	                    <div class="PostminiItems">
	                        <a href="sub_myFeed.html"><img src="image/fashion8.jpeg"></a>
	                    </div>
	                </div>
	            </div>
	        </article>
	        <article>
	            <div id="KIRRIRecommendSection1">
	                <h2>추천 게시글</h2>
	                <div class="KIRRIRecommendGroup">
	                    <div class="KIRRIRecommendItems">
	                        <a href="sub_myFeed.html"><img src="image/screen1.png"></a>
	                    </div>
	                    <div class="KIRRIRecommendItems">
	                        <a href="sub_myFeed.html"><img src="image/screen2.png"></a>
	                    </div>
	                    <div class="KIRRIRecommendItems">
	                        <a href="sub_myFeed.html"><img src="image/screen4.png"></a>
	                    </div>
	                </div><br>
	                <div class="KIRRIRecommendGroup">
	                    <div class="KIRRIRecommendItems">
	                        <a href="sub_myFeed.html"><img src="image/screen5.jpeg"></a>
	                    </div>
	                    <div class="KIRRIRecommendItems">
	                        <a href="sub_myFeed.html"><img src="image/screen3.png"></a>
	                    </div>
	                    <div class="KIRRIRecommendItems">
	                        <a href="sub_myFeed.html"><img src="image/screen9.jpeg"></a>
	                    </div>
	                </div>
	            </div>
	        </article>
	        </section>
	        
	        <!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		</div>
	</body>
</html>