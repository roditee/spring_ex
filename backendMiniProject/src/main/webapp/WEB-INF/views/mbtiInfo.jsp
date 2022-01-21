<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	   	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	   	<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>MBTI별 특징 모아보기</title>
		<link href="<c:url value='/css/mbti.css'/>" rel="stylesheet" type="text/css">	
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/mbti.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
			<section class="main">
            <div class="main-container"></div>
	        </section>
	        <section>  
	            <div class="information">
	                <h1 id="font1">동물로 보는 나의 성격유형</h1><br>
	                <p>동물사진 클릭시 관련 키워드 확인가능</p>
	            </div>
	        </section><hr id="hrhr" width="50%">
	        <section>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems01.png" alt=""><hr /></a>
	                    </p>
	                    <p>INTJ</p><p>주로 남성한테 나타나는 유형으로 호기심이 많고 용의주도한 전략가 유형</p><br>
	                    <div id="light" class="white_content">
	                        <img src="image/mbtiCtgItems01.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
	                        <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">이론적</button>
	                            <button type="button" id="keyword">지식</button>
	                            <button type="button" id="keyword">미래 지향적</button>
	                            <button type="button" id="keyword">츤데레</button><br>
	                            <button type="button" id="keyword">계획</button>
	                            <button type="button" id="keyword">냉소적</button>
	                            <button type="button" id="keyword">해결</button>
	                            <button type="button" id="keyword">확고한</button><br>
	                            <button type="button" id="keyword">지적 호기심</button>
	                            <button type="button" id="keyword">회의주의</button>
	                            <button type="button" id="keyword">창조적</button>
	                            <button type="button" id="keyword">겉바속촉</button><br>
	                        </div>    
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light1').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems02.png" alt=""><hr /></a>
	                    </p>
	                    <p>INTP</p>몽상을 좋아하는 사색가</p><br><br><br>
	                    <div id="light1" class="white_content">
	                        <img src="image/mbtiCtgItems02.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light1').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">논리적</button>
	                            <button type="button" id="keyword">창의적</button>
	                            <button type="button" id="keyword">권력지향적</button>
	                            <button type="button" id="keyword">독립적</button><br>
	                            <button type="button" id="keyword">이론적</button>
	                            <button type="button" id="keyword">분석적</button>
	                            <button type="button" id="keyword">마이웨이</button>
	                            <button type="button" id="keyword">게으름</button><br>
	                            <button type="button" id="keyword">똑똑함</button>
	                            <button type="button" id="keyword">자기결정</button>
	                            <button type="button" id="keyword">진지충</button>
	                            <button type="button" id="keyword">나르시즘</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light2').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems03.png" alt=""><hr /></a>
	                    </p>
	                    <p>ENTJ</p>천성적으로 타고난 리더상으로 카리스마와 자신감이 넘치는 통솔자</p><br>
	                    <div id="light2" class="white_content">
	                        <img src="image/mbtiCtgItems03.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light2').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">자신감</button>
	                            <button type="button" id="keyword">카리스마</button>
	                            <button type="button" id="keyword">워커홀릭</button>
	                            <button type="button" id="keyword">명언</button><br>
	                            <button type="button" id="keyword">섹시함</button>
	                            <button type="button" id="keyword">전략</button>
	                            <button type="button" id="keyword">무자비</button>
	                            <button type="button" id="keyword">해결</button><br>
	                            <button type="button" id="keyword">꼰대파이터</button>
	                            <button type="button" id="keyword">자기계발</button>
	                            <button type="button" id="keyword">지배적</button>
	                            <button type="button" id="keyword">단호박</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light3').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems04.png" alt=""><hr /></a>
	                    </p>
	                    <p>ENTP</p>자유분방한 사고로 상대를 꿰뚫고 주변을 아군으로 만드는 스타일</p><br>
	                    <div id="light3" class="white_content">
	                        <img src="image/mbtiCtgItems04.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light3').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">합리적</button>
	                            <button type="button" id="keyword">솔직함</button>
	                            <button type="button" id="keyword">환불 원정대</button>
	                            <button type="button" id="keyword">냉철</button><br>
	                            <button type="button" id="keyword">임기응변</button>
	                            <button type="button" id="keyword">자기애</button>
	                            <button type="button" id="keyword">파이터</button>
	                            <button type="button" id="keyword">논쟁</button><br>
	                            <button type="button" id="keyword">키보드 워리어</button>
	                            <button type="button" id="keyword">독립심</button>
	                            <button type="button" id="keyword">개방적</button>
	                            <button type="button" id="keyword">YOLO</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	        </section>
	        <section>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light4').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems05.png" alt=""><hr /></a>
	                    </p>
	                    <p>INFJ</p>가장 흔치 않은 성격 유형으로 섬세하고 조용하고 신비로움</p><br>
	                    <div id="light4" class="white_content">
	                        <img src="image/mbtiCtgItems05.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light4').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">정직함</button>
	                            <button type="button" id="keyword">외유내강</button>
	                            <button type="button" id="keyword">도어슬램</button>
	                            <button type="button" id="keyword">선</button><br>
	                            <button type="button" id="keyword">겉차속따</button>
	                            <button type="button" id="keyword">통찰력</button>
	                            <button type="button" id="keyword">신념</button>
	                            <button type="button" id="keyword">가면</button><br>
	                            <button type="button" id="keyword">완벽 주의</button>
	                            <button type="button" id="keyword">성실함</button>
	                            <button type="button" id="keyword">옹호자</button>
	                            <button type="button" id="keyword">감수성</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light5').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems06.png" alt=""><hr /></a>
	                    </p>
	                    <p>INFP</p>언어적 소질이 뛰어난 긍정적인 이상주의자</p><br><br>
	                    <div id="light5" class="white_content">
	                        <img src="image/mbtiCtgItems06.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light5').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">관대함</button>
	                            <button type="button" id="keyword">개방적</button>
	                            <button type="button" id="keyword">자기비판적</button>
	                            <button type="button" id="keyword">비실용적</button><br>
	                            <button type="button" id="keyword">창의적</button>
	                            <button type="button" id="keyword">열정적</button>
	                            <button type="button" id="keyword">이상주의</button>
	                            <button type="button" id="keyword">헌신적</button><br>
	                            <button type="button" id="keyword">갈등회피</button>
	                            <button type="button" id="keyword">개인주의</button>
	                            <button type="button" id="keyword">로맨틱</button>
	                            <button type="button" id="keyword">아싸</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light6').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems07.png" alt=""><hr /></a>
	                    </p>
	                    <p>ENFJ</p>사이좋은 공동체를 만드는 것에 행복을 느끼는 열정가</p><br><br>
	                    <div id="light6" class="white_content">
	                        <img src="image/mbtiCtgItems07.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light6').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">외교적</button>
	                            <button type="button" id="keyword">배려심</button>
	                            <button type="button" id="keyword">성장도모</button>
	                            <button type="button" id="keyword">겸손</button><br>
	                            <button type="button" id="keyword">애정결핍</button>
	                            <button type="button" id="keyword">조직적</button>
	                            <button type="button" id="keyword">칭찬봇</button>
	                            <button type="button" id="keyword">조력자</button><br>
	                            <button type="button" id="keyword">차분한자신감</button>
	                            <button type="button" id="keyword">리더십</button>
	                            <button type="button" id="keyword">붙임성</button>
	                            <button type="button" id="keyword">인맥왕</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light7').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems08.png" alt=""><hr /></a>
	                    </p>
	                    <p>ENFP</p>자유를 즐기고 타인을 즐겁게 해주는 사교적인 타입</p><br><br>
	                    <div id="light7" class="white_content">
	                        <img src="image/mbtiCtgItems08.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light7').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">난천적</button>
	                            <button type="button" id="keyword">독창적</button>
	                            <button type="button" id="keyword">표현력풍부</button>
	                            <button type="button" id="keyword">다재다능</button><br>
	                            <button type="button" id="keyword">자율성</button>
	                            <button type="button" id="keyword">호기심</button>
	                            <button type="button" id="keyword">귀여움</button>
	                            <button type="button" id="keyword">친밀한</button><br>
	                            <button type="button" id="keyword">매력덩어리</button>
	                            <button type="button" id="keyword">오락부장</button>
	                            <button type="button" id="keyword">활동적</button>
	                            <button type="button" id="keyword">작심삼일</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	        </section>
	        <section>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light8').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems09.png" alt=""><hr /></a>
	                    </p>
	                    <p>ISTJ</p>가장 다수의 사람이 속하는 성격 유형으로 재빠르고 신중하며 조직에서 핵심 구성원 역할</p><br>
	                    <div id="light8" class="white_content">
	                        <img src="image/mbtiCtgItems09.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light8').style.display='none';document.getElementById('fade').style.display='none'">
	                        <div>                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                            <button type="button" id="keyword">정직함</button>
	                            <button type="button" id="keyword">고정관념</button>
	                            <button type="button" id="keyword">절약형</button>
	                            <button type="button" id="keyword">단골</button><br>
	                            <button type="button" id="keyword">암기</button>
	                            <button type="button" id="keyword">책임감</button>
	                            <button type="button" id="keyword">보수적</button>
	                            <button type="button" id="keyword">꼰대</button><br>
	                            <button type="button" id="keyword">개인플레이</button>
	                            <button type="button" id="keyword">질서</button>
	                            <button type="button" id="keyword">계획</button>
	                            <button type="button" id="keyword">유교걸</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light9').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems10.png" alt=""><hr /></a>
	                    </p>
	                    <p>ISFJ</p>조용하고 내성적이며 가족에 대한 애착이 강하며 인간관계 형성이 뛰어난 이타주의자</p><br>
	                    <div id="light9" class="white_content">
	                        <img src="image/mbtiCtgItems10.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light9').style.display='none';document.getElementById('fade').style.display='none'">
	                        <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">헌신적</button>
	                            <button type="button" id="keyword">인내심</button>
	                            <button type="button" id="keyword">원칙주의자</button>
	                            <button type="button" id="keyword">충성스런</button><br>
	                            <button type="button" id="keyword">방어적</button>
	                            <button type="button" id="keyword">체계적</button>
	                            <button type="button" id="keyword">봉사정신</button>
	                            <button type="button" id="keyword">이타심</button><br>
	                            <button type="button" id="keyword">완벽주의</button>
	                            <button type="button" id="keyword">기억력</button>
	                            <button type="button" id="keyword">책임감</button>
	                            <button type="button" id="keyword">잔소리</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light10').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems11.png" alt=""><hr /></a>
	                    </p>
	                    <p>ESTJ</p>질서를 중시하며 군중을 단결시키는 관리자 유형</p><br><br>
	                    <div id="light10" class="white_content">
	                        <img src="image/mbtiCtgItems11.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light10').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">분석적</button>
	                            <button type="button" id="keyword">현실중시</button>
	                            <button type="button" id="keyword">기획입안자</button>
	                            <button type="button" id="keyword">선비</button><br>
	                            <button type="button" id="keyword">보수주의</button>
	                            <button type="button" id="keyword">리더형</button>
	                            <button type="button" id="keyword">지시적</button>
	                            <button type="button" id="keyword">캐리</button><br>
	                            <button type="button" id="keyword">호불호 확실</button>
	                            <button type="button" id="keyword">관습적</button>
	                            <button type="button" id="keyword">계획</button>
	                            <button type="button" id="keyword">타노스</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light11').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems12.png" alt=""><hr /></a>
	                    </p>
	                    <p>ESFJ</p>주위 사람들과 잘 어울리는 인기쟁이</p><br><br>
	                    <div id="light11" class="white_content">
	                        <img src="image/mbtiCtgItems12.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light11').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">성실함</button>
	                            <button type="button" id="keyword">리액션</button>
	                            <button type="button" id="keyword">정리정돈</button>
	                            <button type="button" id="keyword">계획</button><br>
	                            <button type="button" id="keyword">감동쟁이</button>
	                            <button type="button" id="keyword">동정심</button>
	                            <button type="button" id="keyword">눈치</button>
	                            <button type="button" id="keyword">케어</button><br>
	                            <button type="button" id="keyword">사회성 만렙</button>
	                            <button type="button" id="keyword">오지랖</button>
	                            <button type="button" id="keyword">인맥왕</button>
	                            <button type="button" id="keyword">주접킹</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	        </section>
	        <section>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light12').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems13.png" alt=""><hr /></a>
	                    </p>
	                    <p>ISTP</p>주변을 탐색하는 것을 좋아하는 호기심쟁이</p><br><br>
	                    <div id="light12" class="white_content">
	                        <img src="image/mbtiCtgItems13.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light12').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">손재주</button>
	                            <button type="button" id="keyword">비공개</button>
	                            <button type="button" id="keyword">실용주의적</button>
	                            <button type="button" id="keyword">변덕</button><br>
	                            <button type="button" id="keyword">다재다능</button>
	                            <button type="button" id="keyword">모험심</button>
	                            <button type="button" id="keyword">적응력</button>
	                            <button type="button" id="keyword">호탕</button><br>
	                            <button type="button" id="keyword">평등주의자</button>
	                            <button type="button" id="keyword">귀찮음</button>
	                            <button type="button" id="keyword">가성비</button>
	                            <button type="button" id="keyword">그렇구나</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light13').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems14.png" alt=""><hr /></a>
	                    </p>
	                    <p>ISFP</p>탐험이나 실험 정신이 뛰어난 만능 재주꾼</p><br><br>
	                    <div id="light13" class="white_content">
	                        <img src="image/mbtiCtgItems14.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light13').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">겸손함</button>
	                            <button type="button" id="keyword">감정이입</button>
	                            <button type="button" id="keyword">현실 중심적</button>
	                            <button type="button" id="keyword">고집</button><br>
	                            <button type="button" id="keyword">용두사미</button>
	                            <button type="button" id="keyword">비판적</button>
	                            <button type="button" id="keyword">개인적</button>
	                            <button type="button" id="keyword">적응력</button><br>
	                            <button type="button" id="keyword">조용한 관종</button>
	                            <button type="button" id="keyword">예측불가</button>
	                            <button type="button" id="keyword">충성심</button>
	                            <button type="button" id="keyword">귀차니즘</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light14').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems15.png" alt=""><hr /></a>
	                    </p>
	                    <p>ESTP</p>주변의 이목을 끄는 것을 좋아하는 모험가</p><br><br>
	                    <div id="light14" class="white_content">
	                        <img src="image/mbtiCtgItems15.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light14').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">대담함</button>
	                            <button type="button" id="keyword">임기응변</button>
	                            <button type="button" id="keyword">미사일</button>
	                            <button type="button" id="keyword">스릴</button><br>
	                            <button type="button" id="keyword">도전</button>
	                            <button type="button" id="keyword">직설적</button>
	                            <button type="button" id="keyword">핵인싸</button>
	                            <button type="button" id="keyword">능글</button><br>
	                            <button type="button" id="keyword">팩트 폭격기</button>
	                            <button type="button" id="keyword">단순명료</button>
	                            <button type="button" id="keyword">자발적</button>
	                            <button type="button" id="keyword">반항아</button><br>
	                        </div>
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	            <div class="box">
	                <div>
	                    <p>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light15').style.display='block';document.getElementById('fade').style.display='block'">
	                            <img src="image/mbtiCtgItems16.png" alt=""><hr /></a>
	                    </p>
	                    <p>ESFP</p>흥이 많고 스타성을 타고난 자유로운 영혼</p><br><br>
	                    <div id="light15" class="white_content">
	                        <img src="image/mbtiCtgItems16.png" alt=""><br>
	                        <a href = "javascript:void(0)" onclick = "document.getElementById('light15').style.display='none';document.getElementById('fade').style.display='none'">
	                            <img id="exit" src="./image/exit.png" alt=""></a><br><br>
	                        <div>
	                            <button type="button" id="keyword">사교적</button>
	                            <button type="button" id="keyword">현실적</button>
	                            <button type="button" id="keyword">외부로 발산</button>
	                            <button type="button" id="keyword">너그러운</button><br>
	                            <button type="button" id="keyword">파티광</button>
	                            <button type="button" id="keyword">솔직함</button>
	                            <button type="button" id="keyword">오지라퍼</button>
	                            <button type="button" id="keyword">개방적</button><br>
	                            <button type="button" id="keyword">투머치 토커</button>
	                            <button type="button" id="keyword">열성적</button>
	                            <button type="button" id="keyword">적응력</button>
	                            <button type="button" id="keyword">금사빠</button><br>
	                        </div>
	                        
	                    </div>
	                    <div id="fade" class="black_overlay"></div>
	                </div>
	            </div>
	        </section>
	        
	        <!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		</div>
	</body>
</html>