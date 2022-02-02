<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div id="wrap">
			<a href="crawling">크롤링하기</a>
			
			<div id="infoBox">
				<div id="shapeInfoBox">
					 <h2>외형정보</h2>
					 ${shapeInfo }
				 </div>
				 <hr>
				 
				 <div id="ingredientInfoBox">
					 <h2>성분정보</h2>
					 ${ingredientInfo }
				 </div>
				 <hr>
				 
				 <div id="storeInfoBox">
					 <h2>저장방법</h2>
					 ${storeInfo }
				 </div>
				 <hr>
				 
				 <div id="effectInfoBox">
					 <h2>효능효과</h2>
					 ${effectInfo }
				 </div>
				 <hr>
				 
				 <div id="dosageInfoBox">
					 <h2>용법용량</h2>
					 ${dosageInfoTxt }<br>
					 ${dosageInfoTbl }
				 </div>
				 <hr>
				 
				 <div id="precautionsInfo1Box">
					 <h2>사용상 주의사항</h2>
					 ${precautionsInfo1 }<br>
					 ${precautionsInfo2 }<br>
					 ${precautionsInfo3 }<br>
				 </div>
				 <hr>
			</div>
		</div>
	</body>
</html>