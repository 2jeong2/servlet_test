package com.ssa.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test02")
public class ServletTest02 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter= new SimpleDateFormat("yyyy/mm/dd HH:mm:ss");
		
	    
	 
		
		out.println("<html><head><title>뉴스기사</title></head>");
		out.println("<body><h1>[단독] 고양이가 야옹해</h1>");
		out.println("<small>기사 입력시간 : "+ formatter.format(now) +"<small><hr>끝</body></html>");
	}
}
