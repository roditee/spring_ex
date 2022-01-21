/**
 * postCheck.js
    상품번호 중복 확인
 */
 
 $(document).ready(function(){
	$('#postNoCheckBtn').on('click', function(){
		event.preventDefault();
		alert('postNoCheckBtn Click!');
		
		$.ajax({
			type:"post",
			url:"postNoCheck",
			data:{"postNo": $('#postNo').val()},
			dataType:'text',
			success:function(result){
				if(result == "no_use"){
					alert("사용할 수 없는 번호입니다.");
				}else{
				    alert("사용 가능한 번호입니다.");
			 }
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});
});