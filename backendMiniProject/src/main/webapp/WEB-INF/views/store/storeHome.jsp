<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>KIRRIKKIRI : MBTI 기반 정보 공유</title>
	</head>
	<body>
		<div id="wrap">
		
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
	        <section>
	        	<article>
	        		<div id="SearchBarBox">
		            <div id="SearchBar">
		                <div><i class="fas fa-search"></i></div>
		                <div><input type="text" id="searchBarInput" placeholder="검색어 입력"></div>
		                <span><i class="fas fa-times" id="searchBarRemove"></i></span>
		            </div>
		        </div>
	        	</article>
	            
	            <article>             
	                <div class="slider-1">
	                    <div class="slides">
	                        <div class="active" style="background-image:url(/image/slide_img_01.jpg);">></div>
	                        <div style="background-image:url(/image/slide_img_02.jpg);"></div>
	                        <div style="background-image:url(/image/slide_img_03.jpg);"></div>
	                        <div style="background-image:url(/image/slide_img_04.jpg);"></div>
	                        <div style="background-image:url(/image/slide_img_05.jpg);"></div>
	                    </div>
	                    <div class="page-btns">
	                        <div class="active" style="background-image:url(/image/slide_img_01.jpg);"></div>
	                        <div></div>
	                        <div></div>
	                        <div></div>
	                    </div>
	                    <div class="side-btns">
	                        <div>
	                            <span><i class="fas fa-angle-left"></i></span>
	                        </div>
	                        <div>
	                            <span><i class="fas fa-angle-right"></i></span>
	                        </div>
	                    </div>
	                </div>
	            </article>   
	   			<article>          
	                <div id="KIRRIRecommendSection">
	                    <h2>&emsp;&emsp;&nbsp;KIRRI's 상품 Top4</h2>
	                    <div class="KIRRIRecommendGroup">
	                        <ul class="class-list" data-position="0">
	                            <li class="class-card3">
	                                <a href="<c:url value='/storeHome/product/1'/>">
	                                	<img src="../image/clothes/grayFront.png" alt="top1" class="class-image3" />
    	                            </a>
	                                <a href="<c:url value='/storeHome/product/1'/>" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">[Limited Edition]</div>
	                                        <div class="class-format">Recommend1</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">KIRRI 만의 특별한 감성을 담은 후드티</div>
	                                        <div class="class-detail">인싸들의 hot Item -> KIRRI 후드티 gray</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card3">
	                                <a href="<c:url value='/storeHome/product/2'/>">
	                                	<img src="../image/clothes/navyFront.png" alt="top1" class="class-image3" />
    	                            </a>
	                                <a href="<c:url value='/storeHome/product/2'/>" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">[Limited Edition]</div>
	                                        <div class="class-format">Recommend2</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">KIRRI 만의 특별한 감성을 담은 후드티</div>
	                                        <div class="class-detail">인싸들의 hot Item -> KIRRI 후드티 Navy</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card3">
	                                <a href="<c:url value='/storeHome/product/3'/>">
	                                	<img src="../image/clothes/whiteFront.png" alt="top1" class="class-image3" />
    	                            </a>
	                                <a href="<c:url value='/storeHome/product/3'/>" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">[Limited Edition]</div>
	                                        <div class="class-format">Recommend3</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">Special한 Kirri 기모티</div>
	                                        <div class="class-detail">인싸들의 hot Item -> KIRRI 후드티 White</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card3">
	                                <a href="<c:url value='/storeHome/product/4'/>">
	                                	<img src="../image/clothes/slip01.png" alt="top1" class="class-image3" />
    	                            </a>
	                                <a href="<c:url value='/storeHome/product/4'/>" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">[Limited Edition]</div>
	                                        <div class="class-format">Hot Item</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">Flex를 넘어선 KIRRI 슬리퍼의 돌풍</div>
	                                        <div class="class-detail">누적 구매자 1,500명 돌파!!</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	            </article>
	            <article>
	                <div id="hotItemsSection">
	                    <h2>&nbsp;&nbsp;&nbsp;출시 예정</h2>
	                    <div class="hotItemGroup">
	                        <div class="hotItemGroup">
	                            <ul class="class-list" data-position="0">
	                                <li class="class-card">
	                                    <img src="../image/clothes/short.png" alt="top1" class="class-image" />
	                                    <a href="/post" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type"></div>
	                                            <div class="class-format"></div>
	                                            </div>
	                                            <div class="class-desc">
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="../image/clothes/apchima.png" alt="top1" class="class-image" />
	                                    <a href="/post" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type"></div>
	                                            <div class="class-format"></div>
	                                            </div>
	                                            <div class="class-desc">
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="../image/clothes/socks.png" alt="top1" class="class-image" />
	                                    <a href="/post" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type"></div>
	                                            <div class="class-format"></div>
	                                            </div>
	                                            <div class="class-desc">
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="../image/clothes/cup.png" alt="top1" class="class-image" />
	                                    <a href="/post" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type"></div>
	                                            <div class="class-format"></div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="../image/clothes/clock.png" alt="top1" class="class-image" />
	                                    <a href="/post" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type"></div>
	                                            <div class="class-format"></div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                                 <li class="class-card">
	                                    <img src="../image/clothes/airpod.png" alt="top1" class="class-image" />
	                                    <a href="/post" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type"></div>
	                                            <div class="class-format"></div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                            </ul>
	                    </div>
	                </div>
	            </article>
	        </section>
	        
	        <!-- BOTTOM -->
					<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		</div>
	</body>
</html>