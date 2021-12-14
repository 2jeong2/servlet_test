package com.ssa.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletEx02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
	
		response.setCharacterEncoding("UTF-8");
		//MIME
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		//Date객체를 통해 오늘 날짜를 얻어내고
		
		//SimpleDateFormat을 통해 규격을 맞춰준다.
		//오늘 날짜는 2021년 05월 20일
		Date now = new Date();
		out.println("오늘의 날짜는 " + now );
		
		//formatter
        SimpleDateFormat formatter =new SimpleDateFormat("yyyy년 M월 d일 ");
        String dateString = formatter.format(now);
        out.println(dateString);
	}
}
