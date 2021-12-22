package com.marondal.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/db/test01")
public class DatabaseTest01 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlservice = MysqlService.getInstance();
		mysqlservice.connect();
		
		String query = "SELECT * FROM `real_estate`";
		ResultSet resultSet = mysqlservice.select(query);
		
		try {
			while(resultSet.next()) {
				
				out.print("매물 주소 : " + resultSet.getString("address"));
				out.print(" , 면적 : " + resultSet.getString("area"));
				out.println(" , 타입 : " + resultSet.getString("type"));
				
			String query = mysqlservice.select(selectQuery);
			String insertQuery = "INSERT INTO `real_estate`\r\n"
						
			+"(`realtorId`,`adrress`,`area`,`type`,`price`,`rentPrice`,`createdAt`,`updatedAt`)"
			+"VALUES\r\n"
			+"('3','헤라펠리스 101동 5305호', 350,'매매',1500000,NULL,now(),now())";
			
			
		
			
			
			
			
//			int count = statement.executeUpdate(insertQuery);
//			
//			out.println("삽입 : " + count);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
