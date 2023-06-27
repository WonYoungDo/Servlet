<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<% 
		int cm = Integer.parseInt(request.getParameter("cm"));
		String[] distance = request.getParameterValues("distance");
		
		String result = "";
		for(int i = 0; i < distance.length; i++) {
			if(distance[i].equals("inch")) {
				// inch = value / 2.54
				double inch = cm / 2.54;	
				result += inch + " inch<br>";
			} else if(distance[i].equals("yard")) {
				// yard = value / 91.44
				double yard = cm / 91.44;
				result += yard + " yard<br>";
			} else if(distance[i].equals("feet")) {
				// feet = value / 30.48
				double feet = cm / 30.48;
				result += feet + " feet<br>";
			} else {
				// meter = value / 100
				double meter = cm / 100.0;
				result += meter + " meter<br>";
			}
		}
	%>
	<div class="container">
		<h3>변환 결과</h3>
		<h4><%= cm %>cm</h4>
		<hr>
		<h4><%= result %></h4>
	</div>
	
		
	
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>