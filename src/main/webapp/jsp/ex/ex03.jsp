<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method</title>
</head>
<body>
	<%
		String nickname = request.getParameter("nickname");
	
		String animal = request.getParameter("animal");
		
		String fruit = request.getParameter("fruit");
		
		// String food = request.getParameter("food");
		// return 형태는 배열 형태로 check박스 복수 출력
		String[] foodArray = request.getParameterValues("food");
		
		String foodString = "";
		for(int i = 0; i < foodArray.length; i++) {
			foodString += foodArray[i] + " "; // foodString = foodString + foodArray[i];
		}
	
	%>
	<h3><%= nickname %></h3>
	<h3>좋아하는 동물 : <%= animal %></h3>
	<h3>좋아하는 과일 : <%= fruit %></h3>
	<h3>좋아하는 음식 : <%= foodString %></h3>
</body>
</html>