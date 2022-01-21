/* PostGroupItems1.js */

$(document).ready(function(){
	var colors = ['pink' ,'white'];
	var num = 0;
	$('#btn').on({
		click:function(){
			$(this).css('background-color',colors[num++]);
			if(num == 2) num = 0;
		}
	})

});
$(document).ready(function(){
	var colors = ["#d8e8f3" ,'white'];
	var num = 0;
	$('#btn1').on({
		click:function(){
			$(this).css('background-color',colors[num++]);
			if(num == 2) num = 0;
		}
	})

});


$(function() {
	var slideIdx = 0;
	Picture(slideIdx);
	
	// 배너 이동 함수
	function Picture(idx) {
		slideIdx = idx;
		
		var slide = -(idx * 750);
		$('#Picture').animate({'left':slide}, 'slow');
	}
	
	// prevBtn
	$('#prevBtn1').on('click', function() {
		if (slideIdx!=0) slideIdx-=1;
		
		Picture(slideIdx);
	});
	
	// nextBtn
	$('#nextBtn1').on('click', function() {
		if (slideIdx!=4) slideIdx+=1;
		
		Picture(slideIdx);
	});
	
	// 버튼 사라지는거
	// bannerControl 버튼 : 클릭하여 원하는 인덱스의 배너로 이동
	$('.bannerControl').each(function(idx) {
		
		
		$(this).on('click', function() {
			Picture(idx);
		});
		
	});
	

});

