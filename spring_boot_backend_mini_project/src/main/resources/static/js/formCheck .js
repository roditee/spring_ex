/**
 * formCheck.js
 */

window.onload = function() {
	document.getElementById('joinForm').onsubmit = function() {
		// name
		var errMsgName = document.getElementById('nameError');
		var name1 = document.getElementById('name');
		if(name1.value == ""){
			alert("성명을 입력하세요.");
			errMsgName.innerText = "성명을 입력하세요."
			errMsgName.style.visibility = 'visible';
			name1.focus();
			return false;
		}
		errMsgName.style.visibility = 'hidden';

		// id
		var errMsgId = document.getElementById('idError');
		var idToken = false
		const idReg = /^[a-z0-9]{4,20}$/;
		const id = document.getElementById('idCheck');

		if(id.value == "") {
			alert("아이디를 입력하세요.");
			errMsgId.innerText = "아이디를 입력하세요."
			errMsgId.style.visibility = 'visible';
			id.focus();
			return false;	
		}
		errMsgId.style.visibility = 'hidden';

		if(id.value.length < 4 || id.value.length > 11) {
			alert("아이디는 영 소문자, 숫자 4 ~ 10자리로 입력해주세요.");
			id.value = "";
			errMsgId.innerText = "아이디는 영 소문자, 숫자 4 ~ 10자리로 입력해주세요."
			errMsgId.style.visibility = 'visible';
			id.focus();
			return false;	
		} else{
            const idError = document.getElementById('idError')
            idError.innerText = '올바른 아이디입니다.'
            idError.style.color = 'green'
			idToken = true;
		}

		// 비밀번호
		var errMsgPw = document.getElementById('pwError');
		var password = document.getElementById('password');
		var passwordCheck = document.getElementById('passwordCheck');
		if(password.value == "") {
			alert("비밀번호를 입력하세요.");
			password.focus();
			return false;
		}
		if(passwordCheck.value == "") {
			alert("비밀번호 확인을 입력하세요.");
			passwordCheck.focus();	
			return false
		}
		
		if(password.value != passwordCheck.value){
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다");
			passwordCheck.value = "";
			passwordCheck.focus();
			return false;	  		
		}

		if(password.value.length < 10 || password.value.length > 17) {
			alert("비밀번호는 문자, 숫자, 특수문자(~!@#$%^&*)의 조합 10 ~ 16자리로 입력하세요.");
			password.value = "";
			passwordCheck.value = "";
			errMsgPw.innerText = "비밀번호는 문자, 숫자, 특수문자(~!@#$%^&*)의 조합 10 ~ 16자리로 입력하세요."
			errMsgPw.style.visibility = 'visible';
			password.focus();
			return false;	
		}
		
		errMsgPw.style.visibility = 'hidden';
		
		// 이메일
		var mailChk = false; 
		for(var i=0; i<joinForm.emailRcv.length; i++){
			if(joinForm.emailRcv[i].checked == true)
				mailChk = true; 
		} 
		
		if(mailChk == false) {
			alert("이메일 수신 여부를 선택하세요");
			return false;
		}
		
		// 생년월일
		var birthYear = document.getElementById('birthYear');
		if(birthYear.value == "") {
			alert("태어난 연도를 입력하세요.");
			birthYear.focus();
			return false;
		}
		
		// 핸드폰
		var hp1= document.getElementById('hp1');
		var hp2 = document.getElementById('hp2');
		var hp3 = document.getElementById('hp3');
		
		if(hp1.value.length==0) {
			alert("핸드폰 번호를 입력하세요");
			return false;
		}
		if(hp2.value.length==0) {
			alert("핸드폰 번호를 입력하세요");
			return false;
		}
		if(hp3.value.length==0) {
			alert("핸드폰 번호를 입력하세요");
			return false;
		}
		
		var mbti1 = document.getElementById("mbti1");
		var mbti2 = document.getElementById("mbti2");
		var mbti3 = document.getElementById("mbti3");
		var mbti4 = document.getElementById("mbti4");
		var mbti5 = document.getElementById("mbti5");
		var mbti6 = document.getElementById("mbti6");
		var mbti7 = document.getElementById("mbti7");
		var mbti8 = document.getElementById("mbti8");
		var mbti9 = document.getElementById("mbti9");
		var mbti10 = document.getElementById("mbti10");
		var mbti11 = document.getElementById("mbti11");
		var mbti12 = document.getElementById("mbti12");
		var mbti13 = document.getElementById("mbti13");
		var mbti14 = document.getElementById("mbti14");
		var mbti15 = document.getElementById("mbti15");
		var mbti16 = document.getElementById("mbti16");
		if (mbti1.checked == false && mbti2.checked == false &&  mbti3.checked == false && mbti4.checked == false && mbti5.checked == false && mbti6.checked == false && mbti7.checked == false && mbti8.checked == false && mbti9.checked == false && mbti10.checked == false && mbti11.checked == false && mbti12.checked == false && mbti2.checked == false && mbti13.checked == false && mbti14.checked == false && mbti15.checked == false && mbti16.checked == false) {
			alert("MBTI를 체크하지 않았습니다.");
			return false;
		}
		
		var agreement1 = document.getElementById("agreement1");
		var agreement2 = document.getElementById("agreement2");
		
		if (agreement1.checked == false && agreement2.checked == false) {
			alert("동의 여부를 체크하지 않았습니다.");
			return false;
		}
	};
};