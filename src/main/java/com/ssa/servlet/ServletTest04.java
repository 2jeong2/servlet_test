package com.ssa.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class ServletTest04 extends HttpServlet{

	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		
		PrintWriter out = response.getWriter();
		
		String dan = request.getParameter("dan");
		int number = Integer.parseInt(dan);
		
		out.println("<html><head><title>구구단</title></head><ul>");
		for(int i=1; i<10; i++) {
			int result = i*number;
			out.println("<li>"+number + " X " + i + " = " + result+"</li>" );
		}
		out.println("<ul></html>");
	}
}
