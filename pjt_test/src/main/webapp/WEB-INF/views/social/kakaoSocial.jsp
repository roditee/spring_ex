<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- thymleaf -->
<html xmlns:th="http://www.thymeleaf.org">
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
	</head>
	<body>
	
		<!-- REST API
	    <a href="/oauth/loginForm">카카오로 로그인하기</a>
	    <a href="/oauth/kakao">로그아웃</a> -->
		
		<!-- ---------------------------------------------------- -->
	
    <a href="javascript:kakaoLogin();"><img src="//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222" alt="카카오 로그인"/></a><br>
	<form id="kakaoLoginForm" methond="post" action="<c:url value='/kakaoLoginDB'/>">
		이름<input type="text" id="kakaoUserName" name="kakaoUserName"><br>
		이메일<input type="text" id="kakaoUserEmail" name="kakaoUserEmail"><br>
		셍일<input type="text" id="kakaoUserBday" name="kakaoUserBday"><br>
		성별<input type="text" id="kakaoUserGender" name="kakaoUserGender"><br>
	</form>
	
	
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script>
        window.Kakao.init('b3bc39226c10ad1e0663733a444b7b1d');

        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile_nickname, account_email, gender, birthday', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account);
                            
                            console.log(kakao_account.profile.nickname);
                            console.log(kakao_account.birthday);
                            console.log(kakao_account.email);
                            console.log(kakao_account.gender);
                            document.getElementById("kakaoUserName").value=(kakao_account.profile.nickname);
                            document.getElementById("kakaoUserEmail").value=(kakao_account.birthday);
                            document.getElementById("kakaoUserBday").value=(kakao_account.email);
                            document.getElementById("kakaoUserGender").value=(kakao_account.gender);
                            
                            // form 자동 submit
                            document.kakaoLoginForm.submit();
                        }
                    });
                    alert("카카오 로그인 성공!");
                    // window.location.href='/'
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }
    </script>
    <script>
    $(document).ready(function(){
    	$('#kakaoLoginForm').on('submit', function(){
    		event.preventDefault();
    		
    		$.ajax({
    			type:"post",
    			url:"/kakaoSocial",
    			data:{"kakaoUserName": $('#kakaoUserName').val(),
    						"kakaoUserEmail":  $('#kakaoUserEmail').val(),
    						"kakaoUserBday":  $('#kakaoUserBday').val(),
    						"kakaoUserGender":  $('#kakaoUserGender').val(),
    						}, /* 컨트롤러에서 받음 */
    			dataType:'text',
    			success:function(result){
    				if(result == "success"){
    					alert("login ok");
    					location.href="/";
    				}else{
    				    alert("login fail");
    			 }
    			},
    			error:function(data, textStatus){
    /*				let id = $('#id').val()
    				let pw = $('#pw').val()
    				console.log(id)
    				console.log(pw)*/
    				alert("전송 실패");
    			}
    		});
    	});	
    });
    </script>
</body>
</html>