<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
		<body>
			<!-- 버튼을 클릭하면 calculate() 함수 호출 -->
	    	<button onclick="calculate()">calculate</button>
	    
		    <script type="text/javascript">
		    	/* HTML 문서가 생성될 때, notification 기능에 대한 허용 여부 확인 */
		        window.onload = function () {
		            if (window.Notification) {
		                Notification.requestPermission();
		            }
		        }
		        
		        /* notify() 함수를 호출하여 브라우저에 알림 출력 */
		        function calculate() {
		            setTimeout(function () {
		                notify();
		            }, 5000); //5초 뒤
		        }
		 
		        function notify() {
		            if (Notification.permission !== 'granted') {
		                alert('notification is disabled');
		            }
		            else {
		                var notification = new Notification('Notification title', {
		                    icon: 'http://cdn.sstatic.net/stackexchange/img/logos/so/so-icon.png',
		                    body: 'Notification text',
		                });
		                
		                /* 알림 메시지가 클릭되면, 구글 홈페이지로 이동하도록 이벤트 핸들러 등록 */
		                notification.onclick = function () {
		                    window.open('http://google.com');
		                };
		            }
		        }
	        </script>
	</body>
</html>