<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>calendar</title>
		<script src="<c:url value='/js/jquery-3.6.0.min.js'/>"></script>
		
		<!-- fullcalendar -->
		<link href='/resources/fullcalendar-5.10.2/lib/main.css' rel='stylesheet' />
		<script src='/resources/fullcalendar-5.10.2/lib/main.js'></script>
		<script>
		      document.addEventListener('DOMContentLoaded', function() {
		        var calendarEl = document.getElementById('calendar');
		        
		        var arrTxt = [
		        	  { title: '감기약', start: '2022-02-01' },
		        	  { title: '비타민', start: '2022-02-01' },
		        	  { title: '오메가', start: '2022-02-01' },
		        	  { title: '활명수', start: '2022-02-01' },
		        	  { title: '아연', start: '2022-02-01' },
		        	  { title: '비타민', start: '2022-02-02' },
		        	  { title: '감기약', start: '2022-02-14' },
		        	  { title: '활명수', start: '2022-02-20' },
		        	  { title: '비타민', start: '2022-02-12T09:30:00', end: '2022-02-12T16:30:00' },
		        	  { groupId:999, title:'Repeating Event', start:'2022-02-16' },
		        	  { groupId:999, title:'Repeating Event', start:'2022-02-09' },
		        	  ];
		        
		        var calendar = new FullCalendar.Calendar(calendarEl, {
		        	
		          initialView: 'dayGridMonth',
		          headerToolbar: {
	                    left: 'prevYear, prev, next, nextYear today',
	                    center: 'title',
	                    right: 'dayGridMonth, dayGridWeek, dayGridDay, listWeek'
	                },
		          events: arrTxt, // 복용 목록 추가
		          buttonText: { // 버튼 글자 커스텀
		        	  today: '오늘',
		        	  month: '월',
		        	  week : '주',
		        	  day : '일',
		        	  list: '주간 복용 표'
		          },
		          navLinks: true, // 달력 상의 날짜 클릭 가능 여부 : true 클릭 가능. 클릭 시 해당 날짜의 일정 나타남
		          dayMaxEvents: true, // 셀 크기보다 일정이 많이 등록되어 있는 경우 more 표시
		          timeZone: 'local', // 한국 시간으로 설정
		          locale: 'ko', // 한국어 설정
		          expandRows: true, // 화면에 맞게 높이 재설정
		          //selectMirror: true, // 힌트?
		        });
		        calendar.render();
		      });
		</script>
		<style>
	        #calendar {
	            height: 800px;
	            width: 800px;
	        }
        </style>
    </head>
	<body>
		<div id="wrap">

		<section>
			<div id='calendar'></div>
        </section>
		
      </div> <!-- wrap -->
	</body>
</html>