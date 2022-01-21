<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 상세 정보 조회</title>
		
		<style type="text/css">
			a { 	text-decoration:none; }
		</style>
		
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
	</head>
	<body>
		<div id="wrap"> 
		
			<!-- TOP  -->
		   <jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true' />
			<br><br><br>
			<section>
				<h3>상품 상세 정보 조회</h3>
				<form method="post" action="<c:url value='/product/insertCart'/>">
					<table border="1" width="800">
						<tr><td rowspan="9"><img src="<c:url value="/images/${prd.prdImg}"/>" width="300" height="250"></td></tr>
						<tr><td>상품번호</td><td><input type="hidden" name="prdNo" value="${prd.prdNo }"> ${prd.prdNo }</td></tr>
						<tr><td>상품명</td><td>${prd.prdName }</td></tr>
						<tr><td>가격</td><td><fmt:formatNumber value="${prd.prdPrice }" pattern="#,###" /> 원</td></tr>
						<tr><td>제조회사</td><td>${prd.prdCompany }</td></tr>
						<tr><td>상품성명</td><td>${prd.prdDescript }</td></tr>
						<tr><td>주문수량</td>
								<td><input type="button" value="-" onClick="qtyChange(-1)">
										<input type="text" id="cartQty" name="cartQty" value="1" size="1" readonly>
										<input type="button" value="+" onClick="qtyChange(1)"> 개
								</td></tr>
					 <tr><td>구매 예정 금액</td>
					         <td><span id="amount"><fmt:formatNumber value="${prd.prdPrice }" pattern="#,###" /></span>   원</td></tr>
					  <tr><td colspan="2">
					  			<!-- 로그인 하지 않은 경우에는 [로그인] 버튼 출력  -->
					  			<c:if test="${empty sessionScope.sid }">
					  				<button><a href="<c:url value='/loginForm'/>">로그인</a></button>	
					  			</c:if>
					  			
					  			<!-- 로그인한 경우에는 [장바구니] [주문하기] 버튼 출력  -->
					  			<c:if test="${not empty sessionScope.sid }">
					  				<input type="submit" id="insertCart" value="장바구니">
					  				<input type="button" id="insertOrder" value="주문하기">
					  			</c:if>
					  
					  		</td></tr>       
					</table>			
				</form>			
				
				<br><br>
				<a href="<c:url value='/product/listCtgProduct/${prd.ctgId}'/>"><button>상품 목록</button></a>	
			</section>
			
			<br><br><br>
			
			<!-- BOTTOM  -->
		   <jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true' />
		   
	      </div>
	</body>
</html>




