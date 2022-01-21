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
	                        <div class="active" style="background-image:url(image/slide_img_01.jpg);">></div>
	                        <div style="background-image:url(image/slide_img_02.jpg);"></div>
	                        <div style="background-image:url(image/slide_img_03.jpg);"></div>
	                        <div style="background-image:url(image/slide_img_04.jpg);"></div>
	                        <div style="background-image:url(image/slide_img_05.jpg);"></div>
	                    </div>
	                    <div class="page-btns">
	                        <div class="active" style="background-image:url(image/slide_img_01.jpg);"></div>
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
	                <div id="mbtiCtgGroup">
	                    <ul class="mbtiCtg">
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems01.png"></div>
	                                    <div class="mbtiItemsText">INTJ</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems02.png"></div>
	                                    <div class="mbtiItemsText">INTP</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems03.png"></div>
	                                    <div class="mbtiItemsText">ENTJ</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems04.png"></div>
	                                    <div class="mbtiItemsText">ENTP</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems05.png"></div>
	                                    <div class="mbtiItemsText">INFJ</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems06.png"></div>
	                                    <div class="mbtiItemsText">INFP</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems07.png"></div>
	                                    <div class="mbtiItemsText">ENFJ</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems08.png"></div>
	                                    <div class="mbtiItemsText">ENFP</div>
	                                </a>
	                            </div>
	                        </li>
	                    </ul>
	                    <ul class="mbtiCtg">
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems09.png"></div>
	                                    <div class="mbtiItemsText">ISTJ</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems10.png"></div>
	                                    <div class="mbtiItemsText">ISFJ</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems11.png"></div>
	                                    <div class="mbtiItemsText">ESTJ</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems12.png"></div>
	                                    <div class="mbtiItemsText">ESFJ</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems13.png"></div>
	                                    <div class="mbtiItemsText">ISTP</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems14.png"></div>
	                                    <div class="mbtiItemsText">ISFP</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems15.png"></div>
	                                    <div class="mbtiItemsText">ESTP</div>
	                                </a>
	                            </div>
	                        </li>
	                        <li class="mbtiCtgItems">
	                            <div>
	                                <a href="#">
	                                    <div class="mbtiItemsImg"><img src="image/mbtiCtgItems16.png"></div>
	                                    <div class="mbtiItemsText">ESFP</div>
	                                </a>
	                            </div>
	                        </li>
	                    </ul>
	                </div>
	            </article>
	
	            <article>
	                <div id="hotItemsSection">
	                    <h2>실시간 인기 게시글</h2>
	                    <div class="hotItemGroup">
	                        <ul class="class-list" data-position="0">
	                            <li class="class-card">
	                                <img src="image/1001.jpg" alt="top1" class="class-image" />
	                                <a href="/post/detailViewPost/${1001 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">INTP</div>
	                                        <div class="class-format">Best1</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">드라이브 하기 좋은 날씨</div>
	                                        <div class="class-detail">오늘같은 날씨에는 드라이브 국룰이죠</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card">
	                                <img src="image/1002.jpg" alt="top1" class="class-image" />
	                                <a href="/post/detailViewPost/${1002 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">ENFJ</div>
	                                        <div class="class-format">Best2</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">ENFJ 환장하는 우유짜기 체험</div>
	                                        <div class="class-detail">손맛이 아주 좋아요</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card">
	                                <img src="image/1003.jpg" alt="top1" class="class-image" />
	                                <a href="/post/detailViewPost/${1003 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">ENTP</div>
	                                        <div class="class-format">Best3</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">HELLO 2022</div>
	                                        <div class="class-detail">다같이 새해 다짐해요~!!</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card">
	                                <img src="image/1004.jpg" alt="top1" class="class-image" />
	                                <a href="/post/detailViewPost/${1004 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">ENTJ</div>
	                                        <div class="class-format">Best4</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">코시국 언제 끝나...</div>
	                                        <div class="class-detail">해외여행 그리운 ENTJ 손~!</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card">
	                                <img src="image/1005.jpg" alt="top1" class="class-image" />
	                                <a href="/post/detailViewPost/${1005 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">ESTP</div>
	                                        <div class="class-format">Best5</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">그립다</div>
	                                        <div class="class-detail">또 가고싶은 그 곳</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card">
	                                <img src="image/1006.jpg" alt="top1" class="class-image" />
	                                <a href="/post/detailViewPost/${1006 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">ESTJ</div>
	                                        <div class="class-format">Best6</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">꽃구경^^</div>
	                                        <div class="class-detail">노을빛 꽃밭 구경하고 가세요~^^</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                        </ul>
	                    </div>
	                    <div class="hotItemGroup">
	                        <div class="hotItemGroup">
	                            <ul class="class-list" data-position="0">
	                                <li class="class-card">
	                                    <img src="image/1007.jpg" alt="top1" class="class-image" />
	                                    <a href="/post/detailViewPost/${1007 }" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type">ENTP</div>
	                                            <div class="class-format">Best7</div>
	                                            </div>
	                                            <div class="class-desc">
	                                            <div class="class-title">나홀로 드라이브</div>
	                                            <div class="class-detail">바다내음 좋네요</div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="image/1008.jpg" alt="top1" class="class-image" />
	                                    <a href="/post/detailViewPost/${1008 }" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type">ISFJ</div>
	                                            <div class="class-format">Best8</div>
	                                            </div>
	                                            <div class="class-desc">
	                                            <div class="class-title">주말엔 자전거!!!</div>
	                                            <div class="class-detail">신나게 슝슝~~</div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="image/1009.jpg" alt="top1" class="class-image" />
	                                    <a href="/post/detailViewPost/${1009 }" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type">ESFP</div>
	                                            <div class="class-format">Best9</div>
	                                            </div>
	                                            <div class="class-desc">
	                                            <div class="class-title">롯월 다녀왔읍니다</div>
	                                            <div class="class-detail">마스크 잘 썼어요ㅜㅜ 욕하지말아주세용</div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="image/1010.jpg" alt="top1" class="class-image" />
	                                    <a href="/post/detailViewPost/${1010 }" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type">ISTP</div>
	                                            <div class="class-format">Best10</div>
	                                            </div>
	                                            <div class="class-desc">
	                                            <div class="class-title">남자친구가 찍어준 인생샷</div>
	                                            <div class="class-detail">도용 금지 ㅡㅡ 무단 도용 신고합니다</div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="image/1011.jpg" alt="top1" class="class-image" />
	                                    <a href="/post/detailViewPost/${1011 }" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type">ESTJ</div>
	                                            <div class="class-format">Best11</div>
	                                            </div>
	                                            <div class="class-desc">
	                                            <div class="class-title">저희 결혼해요~^^</div>
	                                            <div class="class-detail">모두들 영광스러운 자리를 빛내주세요</div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                                <li class="class-card">
	                                    <img src="image/1012.jpg" alt="top1" class="class-image" />
	                                    <a href="/post/detailViewPost/${1012 }" target="_blank">
	                                        <div class="class-container">
	                                            <div class="class-skill">
	                                            <div class="class-type">ISTP</div>
	                                            <div class="class-format">Best12</div>
	                                            </div>
	                                            <div class="class-desc">
	                                            <div class="class-title">2022 새해 맞이 호캉스</div>
	                                            <div class="class-detail">케이크랑 와인 JMT<br/></div>
	                                            </div>
	                                        </div>
	                                    </a>
	                                </li>
	                            </ul>
	                    </div>
	                </div>
	            </article>
	
	            <article>
	                <div id="KIRRIRecommendSection">
	                    <h2>KIRRI's 추천 게시글</h2>
	                    <div class="KIRRIRecommendGroup">
	                        <ul class="class-list" data-position="0">
	                            <li class="class-card2">
	                                <img src="image/1013.jpg" alt="top1" class="class-image2" />
	                                <a href="/post/detailViewPost/${1013 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">ISTP</div>
	                                        <div class="class-format">Recommend</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">꽁꽁 언 내 마음을 달래주는 플레이리스트</div>
	                                        <div class="class-detail">이불 속에서 귤 까먹으며 들으면 그야말로 천국</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card2">
	                                <img src="image/1014.jpg" alt="top1" class="class-image2" />
	                                <a href="/post/detailViewPost/${1014 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">ESFP</div>
	                                        <div class="class-format">Recommend</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">산타도 울고 갈 연말 선물 추천 리스트</div>
	                                        <div class="class-detail">부모님, 친구들, 직장 동료 모두의 마음을 사로잡을 선물은 바로?</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                            <li class="class-card2">
	                                <img src="image/1015.jpg" alt="top1" class="class-image2" />
	                                <a href="/post/detailViewPost/${1015 }" target="_blank">
	                                    <div class="class-container">
	                                        <div class="class-skill">
	                                        <div class="class-type">ENTP</div>
	                                        <div class="class-format">Recommend</div>
	                                        </div>
	                                        <div class="class-desc">
	                                        <div class="class-title">입맛 까다로운 강아지를 위한 유기농 사료 추천</div>
	                                        <div class="class-detail">성분도 좋고, 맛도 좋은! 내 강아지한테는 좋은 것만 먹이자~!</div>
	                                        </div>
	                                    </div>
	                                </a>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	        </section>
	        
	        <!-- BOTTOM -->
					<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		</div>
	</body>
</html>