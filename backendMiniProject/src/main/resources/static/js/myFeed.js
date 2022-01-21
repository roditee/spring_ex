/* myFeed.js */

$(function() {
	/************* 찜 목록 슬라이드 ************/
	var slideIdx = 0;
	slideWish(slideIdx);
	
	// 찜 목록 이동 함수
	function slideWish(idx) {
		slideIdx = idx;
		var slide = +(idx * 210);
		$('#wishList').animate({'right':slide}, 'fast');
	}
	
	// prevBtn
	$('#prevWish').on('click', function() {
		if (slideIdx!=0) slideIdx-=1;
		slideWish(slideIdx);
	});
	
	// nextBtn
	$('#nextWish').on('click', function() {
		if (slideIdx!=12) slideIdx+=1;
		slideWish(slideIdx);
	});

	/************* profileMusic ************/
	var myMusic = new Audio('/music/music.wav');
	myMusic.volume=0.7;
    
	$('#musicPlay').on('click', function() {
		myMusic.play();
	}).on('ended', function() { 
		this.currentTime = 0;
		this.play();
	}, false);

	$('#musicPause').on('click', function() {
		myMusic.pause();
	});

	/************* seeMore ************/
	$('#seeMore').on('click', function() {
		alert('피드의 마지막 입니다.');
	})
});