/**
 * loginCheck.js
 */
 
 $(document).ready(function(){
	$('#loginForm').on('submit', function(){
		event.preventDefault();
		
		var formData = $(this).serialize();
		
		$.ajax({
			type:"post",
			url:"login",
			data:formData,
			success:function(result){
				if(result == "success") {
					alert("로그인 성공!\nindex 페이지로 이동합니다.");
					location.href = "/";
				} else {
					alert("아이디 또는 비밀번호가 일치하지 않습니다.");
				}
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});	
});