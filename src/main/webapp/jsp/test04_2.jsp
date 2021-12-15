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

	String number1String = request.getParameter("number1");
	int number1 = Integer.parseInt(number1String);
	
	String operatorString = request.getParameter("operator");
	
	String number2String = request.getParameter("number2");
	int number2 = Integer.parseInt(number2String);
	
	double result = 0;
	String operator = "";
	if(operatorString.equals("plus")){
		result = number1+number2;
		operator="+";
	}else if(operatorString.equals("minus")){
		result = number1-number2;
		operator="-";
	}else if(operatorString.equals("multiplication")){
		result = number1* number2;
		operator="X";
	}else if(operatorString.equals("division")){
		result = number1 /(double)number2;
		operator="/";
	}
	

%>


	<h3>계산결과<br><%= number1%> <%=operator%> <%=number2 %>=<%= result  %></h3>
		




</body>
</html>