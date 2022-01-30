/**
 * search.js
 */
 
 $(function(){
	$('#searchForm').on('submit', function(event){
		event.preventDefault();
		 var formData = new FormData($('#searchForm')[0]);
		 
		$.ajax({
			url:"searchDict",
			enctype:'multipart/form-data',
			type:"post",
			data:formData,
			processData: false,  // 필수
			contentType: false,  // 필스
			success:function(searchList){
				$('#resultH3').text("OCR : 텍스트 추출 결과"); // 제목 출력
				$('#resultDiv').text(searchList[0]);  // 결과 텍스트 출력
				// 이미지 출력 : div에 append 시킴
				$('#image').empty();
				$('#image').append('<img src="/images/'+fileName+'"/>');
			},
			error:function(){
				alert("오류가 발생했습니다.")
			}
		});
	});		
});