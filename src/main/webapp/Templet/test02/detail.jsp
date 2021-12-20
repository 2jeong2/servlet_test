<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
           
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<title>세부정보</title>
</head>
<body>
<%@ include file = "data.jsp" %>
	<% 
		
		String idString = request.getParameter("id");
		Map<String,Object> targetMap = null;
		if(idString != null){
			//id를 통한 검색
			Integer musicId = Integer.parseInt(idString);
			for(Map<String,Object> music: musicList){
				Integer id = (Integer)music.get("id");
				if(musicId.equals(id)){
					targetMap = music;
				}
			}
		}
		String title  = request.getParameter("title");
		if(title != null){
			//title 검색
			for(Map<String,Object> music : musicList){
				if(title.equals(music.get("title"))){
					targetMap = music;
				}
			}
		}
		
				
	%>
				
	<div class="container">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<jsp:include page="data.jsp"/>
			
		<section>
		<%
		
		if(targetMap != null){
			
			Integer time = (Integer)targetMap.get("time");
		%>
			<article class="music-info mt-3">
			<h4>곡 정보</h4>
			<div class="info-box border border-success d-flex p-3">
			
				<img src="<%=targetMap.get("thumbnail") %>" width="200" height="200">
			
				<div class="detail ml-3">
					<h3 class="font-weight-bold"><%=targetMap.get("title") %></h3>
					<div class="text-success"><%=targetMap.get("singer") %></div>
					<br>
					<h6>앨범  <%=targetMap.get("album") %>
					<h6>재생시간 <%=time / 60 %>:<%= time %60 %></h6>
					<h6>작곡가  <%=targetMap.get("composer") %></h6>
					<h6>작사가  <%=targetMap.get("lyricist") %></h6>
				</div>
			</div>
			</article>
			<article class="music-lyrics mt-5">
			
				<h3 class="font-weight-bold">가사</h3>
				<hr>
				<div>가사 정보 없음 </div>
				<br>
				
			</article>
			<%}else {%>
			<article class="mt-3">
				<h3 class=" text-center">검색결과 없음</h3>
			</article>
			<%} %>
		</section>
		
	<jsp:include page="footer.jsp"/>
	</div>
</body>
</html>