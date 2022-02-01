/**
 * ocr.js
 */
 
 $(function(){
	$('#ocrForm').on('submit', function(event){
		event.preventDefault();
		 var formData = new FormData($('#ocrForm')[0]);
		 
		 // 업로드된 파일명 알아오기
		 var fileName = $('#uploadFile').val().split("\\").pop();
		 //alert(fileName);
		 
		$.ajax({
			url:"clovaOCR",
			enctype:'multipart/form-data',
			type:"post",
			data:formData,
			processData: false,  // 필수
			contentType: false,  // 필스
			success:function(result){
				$('#resultH3').text("OCR : 텍스트 추출 결과"); // 제목 출력
				$('#resultDiv').text(result);  // 결과 텍스트 출력
				// 이미지 출력 : div에 append 시킴
				$('#image').empty();
				$('#image').append('<img src="/images/'+fileName+'"/>'); // 입력 이미지 출력
			},
			error:function(){
				alert("오류가 발생했습니다.")
			}
		});
	});		
});


// 검색
 $(function(){
	$('#searchBtn').on('click', function(event){
		event.preventDefault();
		alert("aaa");
		var resultText = $('#resultH3');
		
		$.ajax({
			url:"searchDict",
			type:"post",
			data: resultText,
			dataType: "json",
			success:function(data){
				$('#searchResultDiv').html(data[0].name + "<br>" + data[0].link + "<br>" + data[0].description + "<br>" + data[0].thumbnail);
				// $('#searchResultDiv').text(searchList[0].name + "  " + searchList[0].link + "  " + searchList[0].description + "  " + searchList[0].thumbnail);  // 결과 텍스트 출력
				// 이미지 출력 : div에 append 시킴
				
				var img = "<img src='" + data[0].thumbnail + "'/>";
				$('#resultImage').empty();
				$('#resultImage').append(img);
			},
			error:function(){
				alert("오류가 발생했습니다.")
			}
		});
	});		
});