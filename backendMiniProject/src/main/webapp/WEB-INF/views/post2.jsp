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
	<h3>MyBatis 사용 DB 연동</h3>
	
	
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
	                                        	<h4>게시글 관리</h4>
		<br>
		<a href="product/listAllProduct">MBTI별 게시글 조회</a><br><br>
		<a href="product/newProductForm">게시글 등록</a><br><br>
		<a href="product/productSearchForm">게시글 검색</a><br><br>
<!-- 		<a href="product/productSearchForm2">상품 검색2</a><br><br>
 -->		
		<a href="fileUploadForm">파일 업로드</a><br><br>
		<a href="fileDownloadList">파일 다운로드</a><br><br>
	                            <div id="prevNextBtnGroup">
	                            </div>
	                        <div id="PictureGroup">
	                            <div id="Picture">

	                            </div>
	                        </div>
	                            <div class="PictureminiGroup">
	                                <div class="PictureminiItems">
	                                </div>
	                                <div class="PictureminiItems">
	                                </div>
	                                <div class="PictureminiItems">
	                                </div>
	                                <div class="PictureminiItems">
	                                </div>
	                                <div class="PictureminiItems">
	                                </div>
	                            </div>
	                            </section>
	
	
	                            <!-- <div id="loginHeader">
	                                <img id="loginLogoImg" src="./image/KIRRI.png"><span id="loginLogoText">Login</span>
	                            </div> -->
	                        <aside id="PostGroupItems2">
	                            <div id="profile">
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
	                                       	<div id="popbtn">
	                                        	<a href="#pop1" class="btn">팝업열기</a>
								            <div class="popupbtn" id="pop1">
								            	<div class="popimage">
								            		<img src="image/honeypotato.png"><br>
								            	</div>
								            	<a href="#a">닫기</a>
								            </div>
								            <div class="dim"></div>
								            </div>
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
	                <h2>추천 상품<a href="product/productSearchForm">상품 검색</a><br><br>
	                </h2>
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