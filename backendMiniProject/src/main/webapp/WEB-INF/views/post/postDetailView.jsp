<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시글 상세 정보</title>
		<link href="<c:url value='/css/common.css'/>" rel="stylesheet" type="text/css">	
	</head>
	<body>
			<!-- TOP -->
			<jsp:include page="/WEB-INF/views/layout/top.jsp" flush='true'/>
			
	        <section>
	        	<div id="h3">
					<h3>${prd.prdNo } 게시글 상세 정보</h3>
				</div>
				<table class="B" border="1" width="900">
					<tr><th colspan="3">${post.postNo } 번 게시글</th></tr>
					<tr><th rowspan="4"><img src="<c:url value='/image/${post.postNo}.jpg'/>"></th><th>작성자 : ${post.memId }</th><th>MBTI : ${post.memMbti }</th></tr>
					<tr><th colspan="2">제목 : ${post.postTitle }</th></tr>
					<tr><th colspan="2">${post.postContent }</th></tr>
					<tr><th colspan="2"><a href="<c:url value='/post/updatePostForm/${post.postNo}'/>">게시물 수정</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:deleteCheck();">게시글 삭제</a></th></tr>
				</table><br>

				<script type="text/javascript">
					function deleteCheck(){
						var answer = confirm("선택한 게시글을 삭제하시겠습니까?");
						if(answer == true){
							location.href="/post/deletePost/${post.postNo}";
						}
					}
				</script>
			</section>
			
			<!-- bottom -->
			<jsp:include page="/WEB-INF/views/layout/bottom.jsp" flush='true'/>
	</body>
</html>





