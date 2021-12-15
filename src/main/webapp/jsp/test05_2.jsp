<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
		int centimeter = Integer.parseInt(request.getParameter("length"));
		String[] types= request.getParameterValues("type");
		String resultString = "";
		
		for(int i=0; i<types.length; i++){
			if(types[i].equals("inch")){
				double inch = centimeter * 0.39;
				resultString += inch +"inch<br>" ;
			}
			else if(types[i].equals("yard")){
				double yard = centimeter * 0.010936133;
				resultString += yard +"yard<br>";
			}
			else if (types[i].equals("feet")){
				double feet = centimeter * 0.032808399;
				resultString += feet +"feet<br>";
			}
			else if (types[i].equals("meter")){
				double meter = centimeter/100.0;
				resultString += meter +"m<br>";
			}
		}
	
	%>
	<h1>변환결과</h1>
	<h2><%=centimeter %>cm</h2>
	<hr>
	
	<h3><%= resultString %></h3>
	
	
	
	
</body>
</html>