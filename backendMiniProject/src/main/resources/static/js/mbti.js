$(document).ready(function() {
	$(window).scroll(function() {
	    if($(window).scrollTop() >= $("#mainLogo").offset().top) {
	        $(".white_content").css("position", "fixed");
	    }
	    else if(($(window).scrollTop() < $("#mainLogo").offset().top)) {
	        $(".white_content").css("position", "static");
	    }
	});
	
	document.querySelector('.main-container').addEventListener('click', e=> {
	    window.location = 'https://www.16personalities.com/ko/%EB%AC%B4%EB%A3%8C-%EC%84%B1%EA%B2%A9-%EC%9C%A0%ED%98%95-%EA%B2%80%EC%82%AC';
	});
});