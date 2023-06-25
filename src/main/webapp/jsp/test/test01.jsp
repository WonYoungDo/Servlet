<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %> 
<%@ page import="java.util.Arrays" %>   
<%@ page import="java.util.Scanner" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 문제 1번 풀이 --%>
	<%
		int[] scores = {80, 90, 100, 95, 80};
		double average = 0;
		for(int i = 0; i < scores.length; i++) {
			average += scores[i];
		}
		average /= scores.length;
	%>
	<%-- 문제 1번 답--%>
	<h2>1. 점수들의 평균 구하기</h2>
	<h4>평균 점수는 <%= average %>입니다.</h4>
	<br>
	
	
	<%-- 문제 2번 풀이 --%>
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int totalScore = 0;
		for(int i = 0; i < scoreList.size(); i++) {
			if(scoreList.get(i) == "O") {
				totalScore += 100 / scoreList.size();
			} 
		}
	%>
	<%-- 문제 2번 답 --%>	
	<h2>2. 채점 결과</h2>
	<h4>채점 결과는 <%= totalScore %>점입니다.</h4>
	<br>
	
	
	
	<%-- 문제 3번 풀이 --%>
	<%!
		public int getSum() {
			
			int sum = 0;
			for(int i = 1; i <= 50; i++) {
				sum += i;	
			}
			return sum;
		}
	%>
	<%-- 문제 3번 답 --%>
	<h2>3. 1부터 n까지의 합계를 구하는 함수</h2>
	<h4>1에서 50까지의 합은 <%= getSum() %></h4>
	
	
	
	<%-- 문제 4번 풀이 --%>
	<%
		int year = 0;
		int age = 0;
		String birthDay = "20010820";
		
		year = Integer.parseInt(birthDay.substring(0, 4));
		
		age = 2023 - year - 1;
	%>
	<%-- 문제 4번 답 --%>
	<h2>4. 나이 구하기</h2>
	<h4>20010820의 나이는 <%= age %>살입니다.</h4>
	
	
	
	
	
	
	
	
</body>
</html>