package com.ssa.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class ServletTest09 extends HttpServlet{

	private final Map<String, String> userMap =  new HashMap<String, String>() {
		{
			put("id", "hagulu");
			put("password", "asdf");
			put("name", "김인규");
		}
	};
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println("<html><head><title>회원정보</title></head><body>");
		
//		out.println(id+"님 환영합니다.");
		
		
		
			if(!id.equals(userMap.get("id"))) {
				out.println("id가 일치하지 않습니다.");
			}
			else if(!password.equals(userMap.get("password"))) {
				out.println("password가 일치하지 않습니다.");
			}
			else {
				out.println(userMap.get("name")+"님 환영합니다.");
			}
		out.println("</body></html>");
		
	}
	
}
