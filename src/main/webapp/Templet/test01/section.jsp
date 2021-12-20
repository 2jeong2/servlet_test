<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "java.util.*" %>
 <body>
<%@ include file = "data.jsp" %>
<%
String category = request.getParameter("category");
%>
	<section>
			<table class="table text-center">
				<thead>
					<tr class="text-weight-bold">
						<th>채널</th>
						<th>채널명</th>
						<th>카테고리</th>
					</tr>
				</thead>
				<tbody >
				<% 
					for(Map<String,String> channel: list){
					
					if(category == null || category.equals(channel.get("category"))){
					%>
						
					<tr>
						<td><%=channel.get("ch") %></td>
						<td><%=channel.get("name") %></td>
						<td><%=channel.get("category") %></td>
					
					</tr>
						<%}} %>
				</tbody>
			</table>
		</section>

</body>