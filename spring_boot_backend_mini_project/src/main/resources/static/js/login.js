window.onload = function() {
	document.getElementById('loginForm').onsubmit = function() {

		var id = document.getElementById('id');
        var pw = document.getElementById('pw');
		var errMsg = document.getElementById('loginError');
        var dbId = "kirrikkiri";
        var dbPw = "1234";
		
        // id 유효성 검사
		if (id.value === ""){
			errMsg.innerText = "아이디를 입력하세요."
			errMsg.style.visibility = 'visible';
			id.focus();
			return false;
		}
		
        // pw 유효성 검사
		if (pw.value === "") {
			errMsg.innerText = "비밀번호를 입력하세요."
			errMsg.style.visibility = 'visible';
			pw.focus();
			return false;
		}

        // id pw 일치 유효성 검사
        if (!(id.value === dbId && pw.value === dbPw)) {
            errMsg.innerText = "아이디 또는 비밀번호가 일치하지 않습니다."
			errMsg.style.visibility = 'visible';
			id.value = "";
            pw.value = "";
			id.focus();
			return false;
		}
	};
};