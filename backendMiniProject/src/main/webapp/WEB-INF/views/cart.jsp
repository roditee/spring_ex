<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>장바구니</title>
		<link href="<c:url value='/css/cart.css'/>" rel="stylesheet" type="text/css">	
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		<script src="<c:url value='/js/cart.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
		
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
			<section>
				<div id="cartBox">
					<div id="cartListBox">
						<div id="cartDeleteBox">
							<div id="allCheckBox">
								<input type="checkbox" id="allCheck" name="allCheck">
								<label for="allCheck">전체 선택</div>
							<input type="button" id="deleteCart" value="삭제">
						</div>
						<form method="post" action="<c:url value="/product/orderForm"/>">
							<table>
								<tr><th>선택</th><th>사진</th><th>상품명</th><th>가격</th>
									   <th>주문수량</th><th>구매예정금액</th></tr>
							    <c:forEach items="${cartList}" var="ct" >
							    	<tr>
							    			<td><input type="checkbox" class="chkDelete" data-cartNo="${ct.cartNo}"></td>
							    			<td><img src="<c:url value="/image/${ct.cartNo}.png"/>" width="80px" height="80px"></td>
							    			<td>${ct.prdName }</td>
							    			<td><fmt:formatNumber value="${ct.prdPrice }" pattern="#,###" /> 원</td>
							    			<td>
							    				<input type="text" name="cartQty" value="${ct.cartQty}" size="1">
							    				<input type="hidden" name="cartNo" value="${ct.cartNo}">
							    				<input type="hidden" name="prdNo" value="${ct.prdNo}">
							    				<input type="hidden" name="memId" value="${ct.memId}">
							    				<input type="hidden" name="prdPrice" value="${ct.prdPrice}">
							    			</td>
							    			<td align="right">
							    				<span class="amount">
								    				<c:set var="amount" value="${ct.prdPrice * ct.cartQty }" />
								    				<c:set var="sum" value="${sum + amount }" />
								    				<fmt:formatNumber value="${amount}" pattern="#,###" />  
								    			</span> 원
							    			</td>
							    	</tr>
							    </c:forEach>
							    <tr><td colspan="5">총구매예정금액</td>
							    		<td align="right"><fmt:formatNumber value="${sum}" pattern="#,###" /> 원</td></tr>				
							</table>
							<div id="formBtnBox">
								<input id="orderBtn" type="submit" value="주문하기">
								<input id="cancelBtn" type="button" value="취소">
							</div>		
						</form>
					</div>
				</div>
			</section>
			
			<!-- BOTTOM -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
			
		</div>
	</body>
</html>