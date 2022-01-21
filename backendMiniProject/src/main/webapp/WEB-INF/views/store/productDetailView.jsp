<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 상세 페이지</title>
		
		<script type="text/javascript">
			var qty = 1;
			
			// '+'. '-' 버튼 클릭 시 주문수량 증감 처리
			function qtyChange(num){
				qty = qty + num;
				if(qty < 1) qty = 1; // 주문수량이 0이하가 되지 않도록
				calAmount();
			}
			
			// 주문액 계산			
			function calAmount(){
				var cartQty = document.getElementById('cartQty'); // 주문수량 값 읽어오기
				var amount = document.getElementById('amount'); // 주문액 출력
				
				//주문액 계산 = 주문수량 * 상품가격
				var total = qty * ${prd.prdPrice };
								
				cartQty.value = qty; // 변경된 주문수량 출력 
				// 계산액 출력
				amount.innerHTML = total.toLocaleString();
			}
		
		</script>
		
		<script> 
		  function submit2(frm) { 
		    frm.action='/product/orderForm'; 
		    frm.submit(); 
		    return true; 
		  } 
		</script> 
		
		<script> 
		  function warning(frm) {
		  		alert('로그인이 필요합니다.');
				location.href="/";
		    return true; 
		  } 
		</script> 
		
	</head>
	<body onload="init();">
		<div id="wrap">
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
			<!-- section1 -->
			<section>
				<article class="productSection">
					<div id="firstSection1">
						 <div class="show">
					       <img src="image/clothes/grayFront.png" id="show-img">
					     </div>
					
					     <!-- Secondary carousel image thumbnail gallery -->
					
					     <div class="small-img">
					      <img src="/image/next-icon.png" class="icon-left" alt="" id="prev-img">
					       <div class="small-container">
					        <div id="small-img-roll">
					        <c:if test="${prdNo == 1}">
							  <img src="/image/clothes/grayFront.png" class="show-small-img" alt="" id="first_img">
					          <img src="/image/clothes/grayBack.png" class="show-small-img" alt="">
					          <img src="/image/clothes/graySide.png" class="show-small-img" alt="">
					          <img src="/image/clothes/graySide2.png" class="show-small-img" alt="">
							</c:if>
							<c:if test="${prdNo == 2}">
							  <img src="/image/clothes/navyFront.png" class="show-small-img" alt="" id="first_img">
					          <img src="/image/clothes/navyBack.png" class="show-small-img" alt="">
					          <img src="/image/clothes/navySide1.png" class="show-small-img" alt="">
					          <img src="/image/clothes/navySide2.png" class="show-small-img" alt="">
							</c:if>
							<c:if test="${prdNo == 3}">
							  <img src="/image/clothes/whiteFront.png" class="show-small-img" alt="" id="first_img">
					          <img src="/image/clothes/whiteBack.png" class="show-small-img" alt="">
					          <img src="/image/clothes/whiteSide1.png" class="show-small-img" alt="">
					          <img src="/image/clothes/whiteSide2.png" class="show-small-img" alt="">
							</c:if>
							<c:if test="${prdNo == 4}">
							  <img src="/image/clothes/slip01.png" class="show-small-img" alt="" id="first_img">
							</c:if>
					        </div>
					       </div>
					      <img src="/image/next-icon.png" class="icon-right" alt="" id="next-img">
					     </div>
					</div>						
					<div class="vl"></div>
					<div id="firstSection2">
						<p><a href="" style="font-size: 15px;">KIRRI 한정판매 굿즈</a></p><br>
						<span class="prdTitle" style="font-size: 23px;">
							<c:if test="${prdNo == 1}">
					          [Limited Edition] KIRRI 오리지널 후드(기모)-Gray
							</c:if>
							<c:if test="${prdNo == 2}">
							  [Limited Edition] KIRRI 오리지널 후드(기모)-Navy
							</c:if>
							<c:if test="${prdNo == 3}">
							  [Limited Edition] KIRRI 오리지널 후드(기모)-White
							</c:if>
							<c:if test="${prdNo == 4}">
							  [Limited Edition] KIRRI 오리지널 대박 슬리퍼-Yellow
							</c:if>
						</span><br>
						<span class="star">
						  ★★★★★
						  <span>★★★★★</span>
						  <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
						</span>
						<span style="font-size: 22px"> 
							<c:if test="${prdNo == 1}">
					          230개 리뷰
							</c:if>
							<c:if test="${prdNo == 2}">
							  352개 리뷰
							</c:if>
							<c:if test="${prdNo == 3}">
							  218개 리뷰
							</c:if>
							<c:if test="${prdNo == 4}">
							  1,230개 리뷰
							</c:if>
						</span><br><br>
							<c:if test="${prdNo == 1}">
					          &nbsp;<span id="prdPrice">40,000</span>원
							</c:if>
							<c:if test="${prdNo == 2}">
					          &nbsp;<span id="prdPrice">40,000</span>원
							</c:if>
							<c:if test="${prdNo == 3}">
					          &nbsp;<span id="prdPrice">32,000</span>원
							</c:if>
							<c:if test="${prdNo == 4}">
					          &nbsp;<span id="prdPrice">24,000</span>원
							</c:if>
							
								<div class="modal-container">
									  <div class="modal-btn-box">
									  	<button type="button" id="modal-open">쿠폰함</button>  
									  </div> 
									  <div class="popup-wrap" id="popup">
									    <div class="popup">
									      <div class="popup-head">
									          <span class="head-title">
									           KIRRIKKIRI 쿠폰함</span>
									      </div>
									      <div class="popup-body">
									        <div class="body-content">
									          <div class="body-titlebox">
									            <h1>Confirm Modal</h1>
									          </div>
									          <div class="body-contentbox">
									          </div>
									        </div>
									      </div>
									      <div class="popup-foot">
									        <span class="pop-btn confirm" id="confirm">확인</span>
									        <span class="pop-btn close" id="close">창 닫기</span>
									      </div>
									    </div>
									</div>
									</div>	
							<span id="span1">&nbsp;
								<span id="userName"><!-- 로그인 한 경우  -->   
			                       <c:if test="${not empty sessionScope.sid}">
			                          <a href="<c:url value='/myFeed'/>">${sessionScope.sid}'</a>
			                       </c:if></span>
								님이 적용가능한 쿠폰
							</span><br><br><hr><br>
						<p style="font-size: 16px; font-weight: bold;">&nbsp;KIRRI 제품 배송기간</p> 
						<p>&nbsp;└ 이 상품의 평균 배송기간:2일(주말/공휴일 제외)</p><br><hr><br>
						<p><span id="span1">&nbsp;KIRRI</span><span id="span2">브랜드홈</span></p><br>
						<div id="firstSectionBox">
							<select id="prdSelect" name="items1">
								<option value="회색">회색</option>
								<option value="노란색">노란색</option>
								<option value="흰색">흰색</option>
							</select><br><hr>
						</div>
						<a href="/cart" class="myButton1" id="cart">장바구니</a>
						<a href="#" class="myButton2" id="order">주문하기</a>
					 </div>
				</article>
				<article>
					<div id="productNav">
						<ul id="menuItem">
						<li><button class="prdBtn" id="prdBtn1">상품 정보</button>
						<li><button class="prdBtn" id="prdBtn2">리뷰</button>
						<li><button class="prdBtn" id="prdBtn3">문의</button>
						<li><button class="prdBtn" id="prdBtn4">배송/환불</button>
					</ul>		
	            	</div>
				</article>
				<article id="article3">
					<div id="thirdSection1">
						<img id="prdbanner"src="/image/clothes/prdbanner.jpg"><br>
						<img id="prdbanner"src="/image/clothes/prdbanner2.jpg">
					</div>
					<aside id="thirdSection2">
						<div class="productBox">
							<form name = "form" method="post" action="/product/insertCart">
								<table id="orderTable" border="1" width="350"  bgcolor="#fffee9" align="center" cellspacing="0" cellpadding="3" 
								 bordercolor="#000000" bordercolordark="#ffffff" bordercolorlight="#fddc78">
								    <tr>
								    	<td align="center" width="150" bgcolor="#FCF0F3">
								    	<font color="#0000ff">*</font> 상품선택 :</td>
								    	<td width="300">
									    	<select style="width: 200px; height: 30px;" name="selectbank" onchange="bankDisplay(this.form)" >
										    	<option selected value=0>-선택하세요-
										    	<option value=1>Gray 후드
										    	<option value=2>Navy 후드
										    	<option value=3>White 기모 맨투맨
										    	<option value=4>대박 슬리퍼
									    	</select>
								    	</td>
								    </tr>
								    <tr>
								    
								    	<td bgcolor="#FCF0F3" align="center" >수량 :</td>
								    	<c:if test="${prdNo == 1}">
								          	<td>
								          		<input type="button" value="-" onClick="qtyChange(-1)">
												<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
												<input type="button" value="+" onClick="qtyChange(1)"> 개
											</td>
										</c:if>
										<c:if test="${prdNo == 2}">
								          	<td>
								          		<input type="button" value="-" onClick="qtyChange(-1)">
												<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
												<input type="button" value="+" onClick="qtyChange(1)"> 개
											</td>
										</c:if>
										<c:if test="${prdNo == 3}">
								          	<td>
								          		<input type="button" value="-" onClick="qtyChange(-1)">
												<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
												<input type="button" value="+" onClick="qtyChange(1)"> 개
											</td>
										</c:if>
										<c:if test="${prdNo == 4}">
								          	<td>
								          		<input type="button" value="-" onClick="qtyChange(-1)">
												<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
												<input type="button" value="+" onClick="qtyChange(1)"> 개
											</td>
										</c:if>
									</tr>
									<tr>
										<td bgcolor="#FCF0F3" align="center">금액: </td>	
										 <td><span id="amount"><fmt:formatNumber value="${prd.prdPrice }" pattern="#,###" /></span>   원</td>
								    </tr>
								    <tr>
								    	<td align="center" width="80" bgcolor="#FCF0F3">
								    	<font color="#0000ff">*</font> 상품명 :</td>
								    	<td width="400">
								    		<input name="bank" type="text" size="50" maxlength="30" readonly><br>	
							    		</td>
						    		</tr>
						    		<input type="hidden" name="prdNo" value="${prd.prdNo }">
		                            <input type="hidden" name="cartNo" value="${prd.prdNo }">
		                            <input type="hidden" name="memId" value="${sessionScope.sid}">
								</table>
								<div id="blink">
									<c:if test="${empty sessionScope.sid}">
			                      	  	<a class="myButton3" onclick="return warning(this.form);" href="<c:url value='/storeHome'/>">장바구니</a>
			                      	  	<a class="myButton4" onclick="return warning(this.form);" href="<c:url value='/storeHome'/>">바로구매</a>
			                        </c:if>										                        
			                        <c:if test="${not empty sessionScope.sid}">
			                      	  	<input class="myButton3" type="submit" value="장바구니" >
										<input class="myButton4" type="button" value="바로구매" onclick="return submit2(this.form);" >
			                        </c:if>
								</div>
							</form>
						</div>
					</aside>
				</article>
				<article>
	               <div id="fourthSection" style="display: flex;">
	                  <form action="/board/listAllBoard">
	                     <input type="submit" value="리뷰확인" class="styled">
	                  </form>&emsp;
	                  <form action="/board/newBoardForm/1">
	                     <input type="submit" value="리뷰작성" class="styled">
	                  </form>
	               </div>
	            </article>
			</section>

			
			<!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
		</div>
	</body>
</html>