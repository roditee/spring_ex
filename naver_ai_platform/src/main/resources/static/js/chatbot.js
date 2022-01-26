/**
 * chatbot.js
 */
 
 $(function(){
	
	$('#chatForm').on('submit', function(event){	
		event.preventDefault();

		$.ajax({
			url:"chatbotCall",
			type:"post",
			data:{message: $('#message').val()},
			success:function(result){
				$('#chatBox').text(result);   // 저장된 '음성 파일명' 출력
			},
			error:function(e){
				alert("오류가 발생했습니다." + e)
			}
		});
		
		/* 입력란 비우기 */
		$('#message').val('');
	});		
});