<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>    
<%@ page import="java.text.SimpleDateFormat" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜와 시간 정보</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<%
	
		// 날짜 정보를 보여줄  때는 date, 시간은 time
		String what = request.getParameter("what");
	
		Date now = new Date();
		
		SimpleDateFormat FormatDay = new SimpleDateFormat("오늘 날짜 yyyy년 MM월 dd일");
		SimpleDateFormat FormatTime = new SimpleDateFormat("현재시간 HH시 mm분 ss초");
		
		String formatDay = FormatDay.format(now);
		String formatTime = FormatTime.format(now);
		
		String resultString = null;
		
		if(what.equals("date")) { // 현재 날짜를 보여주고 싶을 때
			resultString = formatDay;
		} else { // 현재 시간을 보여주고 싶을 때
			resultString = formatTime;
		}
	%>
	<div class="container">
		<div class="display-4"><%= formatDay %></div>
		<div class="display-4"><%= formatTime %></div>
	</div>
	


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>