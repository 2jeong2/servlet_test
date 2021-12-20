<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
           
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>템플릿 Layout2</title>
</head>

<body>
	<%@ include file = "data.jsp" %>
<div class="container">
	<jsp:include page="header.jsp"/>
	<jsp:include page="nav.jsp"/>
	<section >
		<article class="artist m-4">
			
			<div class=" artist-box d-flex border border-success p-3">
			
				<div class="artist-img">
						<img width="100" src="<%=artistInfo.get("photo") %>">
				</div>
					
				<div class="artist-info ml-3">
					<h4 class=""><%=artistInfo.get("name") %></h4>
					<h6><%=artistInfo.get("agency") %></h6>
					<h6><%=artistInfo.get("debute") %>데뷔</h6>
						
				</div>
			</div>
			
		</article>
		
		
		
		<article class="music-list mt-3">
			<h4>곡 목록</h4>
			<table class="table text-center table-sm ">
				<thead>
					<th>no</th>
					<th>제목</th>
					<th>앨범</th>
				</thead>
				<tbody>
				<% for(Map<String, Object> song : musicList){
					%>
					<tr class="text-center">
						<td><%=song.get("id") %></td>
						<td class="nav"><li class="nav-item"><a href="/Templet/test02/detail.jsp?id=<%=song.get("id") %>" class="nav-link "><%=song.get("title") %></a></li></td>
						<td><%=song.get("album") %></td>	
					</tr>
					<% }%>
				</tbody>
			</table>
		</article>
		
	</section>
	<jsp:include page="footer.jsp"/>
	
	
</div>
</body>
</html>