<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>    
<%@ page import="java.util.List" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 기본 문법</title>
</head>
<body>
	<h2>JPS 기본 문법</h2>
	
	<!-- html 주석 사용자에게도 보여지는 주석-->
	<%-- jsp 주석 사용자가 보면 안 되는 주석--%>
	
	<h2>1. 합계 구하기</h2>
	<%
		int sum = 0;
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<h3>합계 : <%= sum %></h3>
	<input type="text" value="<%= sum %>">
	
	
	<%-- 리스트를 출력 --%>
	<%
		// 동물 이름 저장 리스트
		List<String> animalList = new ArrayList<>();
	
		animalList.add("dog");
		animalList.add("cat");
	%>
	
	<h3>동물 이름</h3>
	<ul>
		<li><%= animalList.get(0) %></li>
		<li><%= animalList.get(1) %></li>
	</ul>
	
	<h2>메소드 만들기</h2>
	
	
	
	
	<%-- hello world를 리턴하는 메소드 --%>
	<%!
		public String getHelloWorld() {
		return "Hello World";
		}
	%>
	
	<h3><%= getHelloWorld() %></h3>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>