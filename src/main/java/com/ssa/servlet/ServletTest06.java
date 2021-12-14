package com.ssa.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class ServletTest06 extends HttpServlet{
	
	@Override
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		
//		out.println("<html><head><title></title></head>");
//		out.println("<h3>"+address + "로 배달중</h3><hr>");
//		out.println("결제금액 : "+price);
		
		if(!address.contains("서울시")) {
			out.println("배달 불가 지역입니다.");
		}
		else if(card.equals("신한카드")) {
			out.println("결제불가 카드 입니다.");
		}
		else{
			out.println("<b>"+address +" 배달중"+"<b>"+"<hr>결제금액 : "+price);
		}
		
//		out.println("<html><head><title>주문정보</title></head>");
//		out.println("<body><th>");
//		out.println("주소"+address);
//		out.println("결제카드"+card);
//		out.println("가격"+price);
//		out.println("</th></body>");
		
		
		
	}

}
