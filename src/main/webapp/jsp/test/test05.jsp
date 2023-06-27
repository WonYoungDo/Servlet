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
		int value = Integer.parseInt(request.getParameter("value"));
		String[] distanceValue = request.getParameterValues("value");
		
		double result = 0;
		for(int i = 0; i < distanceValue.length; i++) {
			if(distanceValue[i].equals("inch")) {
				// inch = value / 2.54
				result = value / 2.54;
			} else if(distanceValue[i].equals("yard")) {
				// yard = value / 91.44
				result = value / 91.44;		
			} else if(distanceValue[i].equals("feet")) {
				// feet = value / 30.48
				result = value / 30.48;		
			} else {
				// meter = value / 100
				result = value / 100;		
			}
		}
	%>
	<div class="container">
		<h3>변환 결과</h3>
		<h4><%= value %>cm</h4>
	</div>
	<hr>
	<div>
		<h4><%= result %> in</h4>
		<h4><%= result %> yd</h4>
		<h4><%= result %> ft</h4>
		<h4><%= result %> m</h4>	
	</div>
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>