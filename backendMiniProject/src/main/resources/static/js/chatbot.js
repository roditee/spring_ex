/**
 * chatbot.js
 */

$(document).ready(function() {
	// 새 창으로 열기
	$('#chatbot').on('click', function() {
		window.open("/chatbot", "test", "width=500, height=630, status=yes, scrollbars=no, resizable=no");
	});

	// 챗봇에게 메세지 보내기
	$('#chatForm').on('submit', function(){
		event.preventDefault();
		if($('#message').val() != ""){
			$('#chatBox').append('<div class="msgBox send"><span>' + $('#message').val() + '</span></div><br>');
		}
		$('#message').val('');
		getResponse();
	});

	// 자동 응답 메시지
	function getResponse() {
		var result = "아직 준비중인 서비스입니다. 이용에 불편을 드려 죄송합니다.";
		
		$('#chatBox').append('<div class="msgBox receive"><br>챗봇<br><span>' + result + '</span></div><br><br>');
		$('#chatBox').scrollTop($('#chatBox').prop("scrollHeight"));
	}

	// 닫기 버튼 눌러 창 닫기
	$('#closeBtn').on('click', function() {
		window.close();
	});
});