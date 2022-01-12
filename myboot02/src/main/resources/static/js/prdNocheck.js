/**
 * prdNocheck.js
 */
 
 $(document).ready(function(){
	$('#prdNoCheckBtn').on('click', function(){
		event.preventDefault();
		
		$.ajax({
			type:"post",
			url:"prdNoCheck",
			data:{"prdNo":$('#prdNo').val()},
			success:function(result){
				if(result=="no_use") {
					alert("사용할 수 없는 번호입니다.");
				} else {
					alert("사용 가능한 번호입니다.");
				}
			},
			error:function(data, textStatus){
				alert("전송 실패");
			}
		});
	});	
});