package com.ssa.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class ServletTest03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>리스트</title></head>");
		out.println("<body>");
		out.println("<ul>");
		for(int i =0; i <30; i++) {
			out.println("<li>"+(i+1)+"번째 리스트 </li>");
		}
		out.println("</ul>");
		out.println("</body></html>");
		
		
		
	}
}
