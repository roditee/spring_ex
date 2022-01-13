<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/common.css">
    <link rel="stylesheet" href="./css/mainBanner.css">
    <link rel="stylesheet" href="./css/section.css">
    <link rel="stylesheet" href="./css/menu.css">
    <title>KIRRIKKIRI : MBTI 기반 정보 공유</title>
    <script src="js/jquery-3.6.0.min.js"></script>
	<script src="js/mainBanner.js"></script>
    <script src="js/main.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/chatbot.js"></script>
    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
    </head>
<body>
    <div id="wrap">
        <header>
            <div id="header">
                <div id="mainLogo"><a href="./index.html"><h2>KIRRIKKIRI</h2></a></div>
                <div id="userManageBtn">
                    <a href="sub_mbti.html">MBTI</a>
                    <a href="./sub_myFeed.html">My Feed</a>
                    <a href="./join.html">Join</a>
                    <a href="./login.html">Login</a>
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
                            <li class="subMenu"><a href="./index.html">HOME</a></li>
                            <li class="subMenu"><a href="#">공지사항</a></li>
                            <li class="subMenu"><a href="#">EVENT</a></li>
                            <li class="subMenu"><a href="#">FAQ</a></li>
                        </ul>
                    </li>
                    <li class="menu link"><a href="#">MBTI</a>
                        <ul class="hide">
                            <li class="subMenu"><a href="#hotItemsSection">인기 게시글</a></li>
                            <li class="subMenu"><a href="#KIRRIRecommendSection">KIRRI 추천 게시글</a></li>
                            <li class="subMenu"><a href="./sub_mbti.html">MBTI 유형별 특징</a></li>
                        </ul>
                    </li>
                    <li class="menu link"><a href="#">KIRRI NEWS</a>
                        <ul class="hide">
                            <li class="subMenu"><a href="#">BrandStory</a></li>
                            <li class="subMenu"><a href="#">주요 사업</a></li>
                            <li class="subMenu"><a href="#">오시는 길</a></li>
                        </ul>
                    </li>
                    <li class="menu link"><a href="#">mbti메뉴</a>
                        <ul class="hide">
                            <li class="subMenu"><a href="#">INTJ</a></li>
                            <li class="subMenu"><a href="#">INTP</a></li>
                            <li class="subMenu"><a href="#">ENTJ</a></li>
                            <li class="subMenu"><a href="#">ENTP</a></li>
                            <li class="subMenu"><a href="#">INFJ</a></li>
                            <li class="subMenu"><a href="#">INFP</a></li>
                            <li class="subMenu"><a href="#">ENFJ</a></li>
                            <li class="subMenu"><a href="#">ENFP</a></li>
                            <li class="subMenu"><a href="#">ISTJ</a></li>
                            <li class="subMenu"><a href="#">ISFJ</a></li>
                            <li class="subMenu"><a href="#">ESTJ</a></li>
                            <li class="subMenu"><a href="#">ESFJ</a></li>
                            <li class="subMenu"><a href="#">ISTP</a></li>
                            <li class="subMenu"><a href="#">ISFP</a></li>
                            <li class="subMenu"><a href="#">ESTP</a></li>
                            <li class="subMenu"><a href="#">ESFP</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>

        <div id="SearchBarBox">
            <div id="SearchBar">
                <div><i class="fas fa-search"></i></div>
                <div><input type="text" id="searchBarInput" placeholder="검색어 입력"></div>
                <span><i class="fas fa-times" id="searchBarRemove"></i></span>
            </div>
        </div>

        <section>
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
                                <img src="./image/ss1.webp" alt="top1" class="class-image" />
                                <a href="./sub_Post.html" target="_blank">
                                    <div class="class-container">
                                        <div class="class-skill">
                                        <div class="class-type">INTP</div>
                                        <div class="class-format">Best1</div>
                                        </div>
                                        <div class="class-desc">
                                        <div class="class-title">MZ세대</div>
                                        <div class="class-detail">나는 메타버스에 살기 싫다</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="class-card">
                                <img src="./image/ss2.webp" alt="top1" class="class-image" />
                                <a href="./sub_Post.html" target="_blank">
                                    <div class="class-container">
                                        <div class="class-skill">
                                        <div class="class-type">ENFJ</div>
                                        <div class="class-format">Best2</div>
                                        </div>
                                        <div class="class-desc">
                                        <div class="class-title">쿠키</div>
                                        <div class="class-detail">크리스마스 선물용 쿠키 제작</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="class-card">
                                <img src="./image/ss3.webp" alt="top1" class="class-image" />
                                <a href="./sub_Post.html" target="_blank">
                                    <div class="class-container">
                                        <div class="class-skill">
                                        <div class="class-type">ENTP</div>
                                        <div class="class-format">Best3</div>
                                        </div>
                                        <div class="class-desc">
                                        <div class="class-title">HI 2022</div>
                                        <div class="class-detail">다같이 새해 다짐해요~!!</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="class-card">
                                <img src="./image/ss4.webp" alt="top1" class="class-image" />
                                <a href="./sub_Post.html" target="_blank">
                                    <div class="class-container">
                                        <div class="class-skill">
                                        <div class="class-type">ENTJ</div>
                                        <div class="class-format">Best4</div>
                                        </div>
                                        <div class="class-desc">
                                        <div class="class-title">아직도 종강을 안 했다니</div>
                                        <div class="class-detail">커피 때리고 과제합니다...</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="class-card">
                                <img src="./image/ss5.webp" alt="top1" class="class-image" />
                                <a href="./sub_Post.html" target="_blank">
                                    <div class="class-container">
                                        <div class="class-skill">
                                        <div class="class-type">ESTP</div>
                                        <div class="class-format">Best5</div>
                                        </div>
                                        <div class="class-desc">
                                        <div class="class-title">강원도</div>
                                        <div class="class-detail">강원도는 눈이 이만큼이나 왔어요</div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="class-card">
                                <img src="./image/ss6.webp" alt="top1" class="class-image" />
                                <a href="./sub_Post.html" target="_blank">
                                    <div class="class-container">
                                        <div class="class-skill">
                                        <div class="class-type">ESTJ</div>
                                        <div class="class-format">Best6</div>
                                        </div>
                                        <div class="class-desc">
                                        <div class="class-title">홈파티</div>
                                        <div class="class-detail">이번 크리스마스는 친구들과 홈파티로 ~~</div>
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
                                    <img src="./image/ss7.webp" alt="top1" class="class-image" />
                                    <a href="./sub_Post.html" target="_blank">
                                        <div class="class-container">
                                            <div class="class-skill">
                                            <div class="class-type">ENTP</div>
                                            <div class="class-format">Best7</div>
                                            </div>
                                            <div class="class-desc">
                                            <div class="class-title">우주의 신비</div>
                                            <div class="class-detail">우리 태양계 행성들의 크기와 은하계 너머 별과 은하들의 크기를 알아보자</div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="class-card">
                                    <img src="./image/ss8.jpg" alt="top1" class="class-image" />
                                    <a href="./sub_Post.html" target="_blank">
                                        <div class="class-container">
                                            <div class="class-skill">
                                            <div class="class-type">ISFJ</div>
                                            <div class="class-format">Best8</div>
                                            </div>
                                            <div class="class-desc">
                                            <div class="class-title">명상법</div>
                                            <div class="class-detail">다양한 명상법과 그 효능을 설명한다.</div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="class-card">
                                    <img src="./image/ss9.jpg" alt="top1" class="class-image" />
                                    <a href="./sub_Post.html" target="_blank">
                                        <div class="class-container">
                                            <div class="class-skill">
                                            <div class="class-type">ESFP</div>
                                            <div class="class-format">Best9</div>
                                            </div>
                                            <div class="class-desc">
                                            <div class="class-title">알로하</div>
                                            <div class="class-detail">하와이에 간다면 꼭 들려야 할 관광지, 맛집 정리</div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="class-card">
                                    <img src="./image/ss10.jpg" alt="top1" class="class-image" />
                                    <a href="./sub_Post.html" target="_blank">
                                        <div class="class-container">
                                            <div class="class-skill">
                                            <div class="class-type">ISTP</div>
                                            <div class="class-format">Best10</div>
                                            </div>
                                            <div class="class-desc">
                                            <div class="class-title">해킹당하지 않는 방법</div>
                                            <div class="class-detail">윈도우의 자동 업데이트를 활성호하여 최신...</div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="class-card">
                                    <img src="./image/ss11.jpg" alt="top1" class="class-image" />
                                    <a href="./sub_Post.html" target="_blank">
                                        <div class="class-container">
                                            <div class="class-skill">
                                            <div class="class-type">ESTJ</div>
                                            <div class="class-format">Best11</div>
                                            </div>
                                            <div class="class-desc">
                                            <div class="class-title">피자 랭킹 TOP 3</div>
                                            <div class="class-detail">1위 도미노피자<br/>2위 피자헛<br/>3위 미스터피자</div>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li class="class-card">
                                    <img src="./image/ss12.webp" alt="top1" class="class-image" />
                                    <a href="./sub_Post.html" target="_blank">
                                        <div class="class-container">
                                            <div class="class-skill">
                                            <div class="class-type">ISTP</div>
                                            <div class="class-format">Best12</div>
                                            </div>
                                            <div class="class-desc">
                                            <div class="class-title">고양이 등록 이름 TOP 3</div>
                                            <div class="class-detail">1위 코코<br/>2위 보리<br/>3위 모모<br/></div>
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
                                <img src="./image/ss13.webp" alt="top1" class="class-image2" />
                                <a href="./sub_Post.html" target="_blank">
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
                                <img src="./image/ss14.webp" alt="top1" class="class-image2" />
                                <a href="./sub_Post.html" target="_blank">
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
                                <img src="./image/ss15.webp" alt="top1" class="class-image2" />
                                <a href="./sub_Post.html" target="_blank">
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
            </article>
        </section>

        <footer>
            <div id="footer">
                <div id="footerInfo">
                    <div id="info1">
                        <h2>KIRRIKKIRI's 고객센터</h2>
                        <h3>1588-7272</h3>
                    </div>
                    <div id="info2">
                        상담시간&nbsp;|&nbsp;
                        평일 10:00 ~ 17:00&nbsp;|&nbsp;
                        주말, 공휴일 휴무&nbsp;|&nbsp;
                        점심시간 12:00 ~ 13:00
                    </div>
                    <div id="info3">
                        <a href="#">브랜드 스토리</a>&nbsp;|&nbsp;
                        <a href="#">회사 소개</a>&nbsp;|&nbsp;
                        <a href="#">채용 정보 </a>&nbsp;|&nbsp;
                        <a href="#">이용 약관</a>&nbsp;|&nbsp;
                        <a href="#">개인 정보 처리 방침</a>&nbsp;|&nbsp;
                        <a href="#">이용 안내</a>&nbsp;|&nbsp;
                        <a href="#">공지사항</a>&nbsp;|&nbsp;
                        <a href="#">고객센터</a>&nbsp;|&nbsp;
                        <a href="#">고객의 소리</a>&nbsp;|&nbsp;
                        <a href="#">제휴/광고 문의</a>
                    </div>
                    <div id="info4">
                        상호명 : (주) KIRRIKKIRI<br/>
                        이메일(고객 문의) : kirrikkiri@mbti.com<br/>
                        주소 : 코끼리아저시 코가손이구 727-2
                    </div>
                </div>
                <div id="toTop">
                    <i id="toTopBtn" class="far fa-hand-point-up"></i>
                </div>
                <div id="chat">
                    <i id="chatbot" class="far fa-comment-alt"></i>
                </div>
            </div>
        </footer>
    </div>
</body>
</html>