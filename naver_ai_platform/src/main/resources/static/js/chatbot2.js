/**
 * chatbot2.js
 */
 
 $(function(){
	
	// 웰컴 메시지를 받기 위해서 message 입력받기 전에
	// 빈 값으로 서버에 전송하고
	// 웰컴 메시지를 받기 위해 $.axaj()를 별도의 함수로 분리해서 호출
	
	callAjax(); // 빈 값으로 서버 전송 -> open 이벤트 호출 -> 웰컴 메시지 출력하기 위해 함수 호출
	
	$('#chatForm').on('submit', function(event){	
		event.preventDefault();
		 
		 // 입력란에 메시지 입력하지 않은 채로 [전송] 버튼 클릭 시 경고창 출력 & 웰컴메시지 출력되지 않도록 함
		 if($('#message').val()=="") {
			alert("질문을 입력하세요");
			return false;
		}
		 
		 /* chatBox에 보낸 메시지 추가*/
		 if($('#message').val() != ""){
			$('#chatBox').append('<div class="msgBox send"><span id="in"><span>' + 
												$('#message').val() + '</span></span></div><br>');
		}
		
		callAjax(); // 기존에 ajax가 있던 자리에 따로 분리해준 callAjax() 함수 호출
		
		/* 입력란 비우기 */
		$('#message').val('');
	});	 // submit 끝
	
	// $.ajax()를 별도의 함수로 분리
	function callAjax() {
		$.ajax({
			url:"chatbotCall",
			type:"post",
			data:{message: $('#message').val()},
			success:function(result){
				/* chatBox에 받은 메시지 추가 */
				$('#chatBox').append('<div class="msgBox receive"><span id="in"><span>챗봇</span><br><span>' + 
														   result +'</span></span></div><br><br>'); 								   
				// 스크롤해서 올리기										   
				$("#chatBox").scrollTop($("#chatBox").prop("scrollHeight"));
			},
			error:function(e){
				alert("오류가 발생했습니다." + e)
			}
		});
	}	
});