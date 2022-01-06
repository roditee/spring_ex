<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>productForm.jsp</title>
	</head>
	<body>
		<h3>상품 정보 등록</h3>
		<form method="post" action="/project/product/newProduct">
				상품 번호 : <input type="text" name="no"><br>
				상품명 : <input type="text" name="name"><br>
				가격 : <input type="text" name="price"><br>
				제조 회사 : <input type="text" name="company"><br>	
				제조일 : <input type="date" name="date"><br>	
				재고 : <input type="text" name="stock"><br>	
				<input type="submit"value="등록"> <input type="reset"value="취소">
			</form>
	</body>
</html>