<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력</title>
</head>
<body>
	
	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label> <input type="text" name="nickname">
		
		<br>
		<h3>강아지 or 고양이 or 사자</h3>
		<label>강아지<input type="radio" name="animal" value="dog"></label>
		<label>고양이<input type="radio" name="animal" value="cat"></label>
		<label>사자<input type="radio" name="animal" value="lion"></label>
		
		
		<h3>좋아하는 과일을 선택하세요</h3>
		<%-- 셀렉트 박스는 값을 지정해주지 않으면 옵션에 나와있는 형태를 그대로 전달해준다. --%>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="apple">사과</option>
			<option>딸기</option>
		</select>
		
		<h3>좋아하는 음식을 모두 고르세요.</h3>
		<%--  --%>
		<label>민트초코<input type="checkbox" name="food" value="민트"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value="파인애플"></label>
		<label>번데기<input type="checkbox" name="food" value="벌레"></label>
		
		<button type="sumit">전달</button>
		
		
		
	</form>

</body>
</html>