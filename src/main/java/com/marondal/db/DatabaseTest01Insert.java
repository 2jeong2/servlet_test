package com.marondal.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;
@WebServlet("/db/test02_insert")
public class DatabaseTest01Insert extends HttpServlet{

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		PrintWriter out = response.getWriter();
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `go_site`\r\n"
				+ "(`name`,`url`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('"+name+"',	'"+url+"',now(),now());";
		
		
		mysqlService.update(query);
		mysqlService.disconnect();
		
		response.sendRedirect("/db/test01_1.jsp");
	}
}
