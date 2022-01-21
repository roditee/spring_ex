/**
 * postSearch.js
 	상품 검색
 */
 
 $(document).ready(function(){
	$('#postSearchFrm').on('submit', function(){
		event.preventDefault();
		
		var formData = $(this).serialize();
		
		$.ajax({
			type:"post",
			url:"postSearch",
			data:formData,  
			success:function(result){
				$('#searchResultbox').empty();
				$('#searchResultbox').append('<table id="resultTable" border="1" width="600">' +
										'<tr><th>게시글 번호</th><th>아이디</th><th>MBTI</th><th>게시글 제목</th><th>게시글 내용</th></tr>');
				if(result == ""){
					$('#resultTable').append('<tr align="center"><td colspan="6">찾는 게시글이 없습니다 </td></tr>');
				}else{
					for(var i=0; i <result.length; i++){
						$('#resultTable').append('<tr><td>' + result[i].postNo + '</td><td>' +
											               result[i].memId + '</td><td>' +
											               result[i].memMbti+ '</td><td>' +
											               result[i].postTitle + '</td><td>' +
											               result[i].postContent + '</td><td>');
					}
				}
				
				$('#searchResultbox').append('</table>');
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});	
});
