<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<script>
	function notify() {
		  if (Notification.permission !== "denied") {
		    Notification.requestPermission(permission => {
		      if (permission === "granted") {
		        new Notification("Hi, Notification");
		      } else {
		        alert('Notification denied');
		      }
		    });
		  }
		}
	</script>
	<body>
		<div id="wrap">
			<button onclick="notify()">Notify</button>
		</div>	
	</body>
</html>