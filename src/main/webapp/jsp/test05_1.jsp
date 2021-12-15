<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>길이 변환</h1>
<form action="/jsp/test05_2.jsp" method="post">
	<input type="text" name="length">cm
	<br>
	
	<div name="type">
		<label>인치<input type="checkbox" name="inch" value = "inch"></label>
		<label>야드<input type="checkbox"name="yard" value = "yard"></label>
		<label>피트<input type="checkbox"name="feet" value = "feet"></label>
		<label>미터<input type="checkbox"name="meter" value = "meter"></label>
	
	</div>
	<button type="submit">변환</button>
	
	



</form>

</body>
</html>