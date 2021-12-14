<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.List" %> 
    <%@ page import = "java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--1번 --%>
<% int[] scores = {80,90,100,95,80};
int sum1=0;
for (int i=0; i<scores.length; i++){
	sum1 += scores[i];
}
double average=sum1/scores.length;

%>
<h3>점수 평균은 <%=average %>입니다</h3>

<%-- 2번 --%>

<%  List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"}); 
	int result=0;
	for(String score:scoreList){
		if(score.equals("O")){
			result+=10;
		}
	}
%>
<h3>체점 결과는 <%=result %> 입니다.</h3>


<%-- 3번 --%>

<%! public int getSum(int number){
	int scores = 0;
	for(int i=0; i< number; i++) {
		scores += i;
	}
	return scores;
		
}
%>
1에서 50까지의 합은 <%= scores %> 

		


<%-- 4번 --%>	
<%
String birthday = "20010820";
String yearString = birthday.substring(0,4);
int year = Integer.parseInt(yearString);
int age = 2021 - year + 1;

%>

</body>
</html>