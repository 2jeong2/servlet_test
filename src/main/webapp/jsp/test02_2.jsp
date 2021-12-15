<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.util.Date" %>
    <%@ page import= "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Date now = new Date();
	SimpleDateFormat Dateformatter = new SimpleDateFormat("yyyy년M월d일");
	SimpleDateFormat Timeformatter = new SimpleDateFormat("H시m분s초");

	String dateString = Dateformatter.format(now);
	String timeString = Timeformatter.format(now);
	
	String what = request.getParameter("what");
	

%>

<% 
	String formatString = null;
	if(what.equals("date")) {
		formatString = dateString;
	}
	else if(what.equals("time")){
		formatString = timeString;
	}


%>
<%-- 	if(request.getParameter("now_day")){ 
		
	}
	else if(request.getParameter("now_time")){
		
	}


--%>

	<h3>오늘 날짜 <%=dateString %></h3>

	<h3>현재 시간 <%=timeString %></h3>





</body>
</html>