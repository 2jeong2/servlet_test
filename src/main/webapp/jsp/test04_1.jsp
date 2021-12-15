<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form method = "post" action="/jsp/test04_2.jsp">
		<h2>사칙연산</h2>
		<input type="text" name="number1" >
		<select name="operator">
			<option value="plus">+</option>
			<option value="minus">-</option>
			<option value="multiplication">X</option>
			<option value="division">/</option>
		
		</select>
		<input type="text" name="number2">
		<button type="submit" >계산</button>
	
	
	</form>
</body>
</html>