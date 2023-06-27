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
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		String calculate = request.getParameter("calculate");
		String[] operatorArray = request.getParameterValues("calculate");
		
		String operator = null;
		double result = 0;
		for(int i = 0; i < operatorArray.length; i++) {
			if(operatorArray[i].equals("plus")) { 			// +일때
				result = number1 + number2;
				operator = "+";
			} else if(operatorArray[i].equals("subtract")) { // -일때
				result = number1 - number2;
				operator = "-";
			} else if(operatorArray[i].equals("multiply")) { // X일떄
				result = number1 * number2;
				operator = "X";
			} else {									// %일때
				result = number1 / number2;
				operator = "%";
			}
		}
	
	%>
	<div class="container">
		<h3 class="font-weight-bold">계산 결과</h3>
		<div class="d-flex">
			<h1 class="mr-2"><%= number1 + " " + operator + " " + number2 %> =</h1>
			<h1 class="text-primary"><%= result %></h1>		
		</div>
	</div>
	
	
	


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>