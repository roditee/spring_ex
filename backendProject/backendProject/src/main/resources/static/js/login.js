/**
 * login.js
 */
 
 $(document).ready(function(){
	$('#frmLogin').on('submit', function(){
		event.preventDefault();
		
		var userId = $('#user_id').val();
		var userPw = $('#user_pw').val();
		
		$.ajax({
			type:"post",
			url:"login",
			data:{"id": userId,
					  "pw": userPw},
			dataType:'text',
			success:function(result){

				if(result == "success")
					message = "login ok";
				else
				   message = "login fail";
				   
				alert(message);
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});	
});


