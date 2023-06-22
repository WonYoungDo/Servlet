package com.tawny.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		// response.setContentType("application/json");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		out.println("<html><head><title>배송결과</title></head><body>");
		
		if(!address.contains("서울시")) { // 포함되어 있는 단어를 찾는 경우
			out.println("<h1>배달불가 지역입니다</h1>");
		} else if(card.equals("신한카드")) { // 정확히 일치하는 것을 찾는 경우 컨데인스는 느릴 수 있음
			 out.println("<h1>결재불가 카드입니다</h1>");
		} else {
			out.println("<h2>" + address + "로 배달 준비중</h2><hr>");
			out.println("<div>결제금액 : " + price + "</div>");
		}
		
		out.println("</body></html>");
		
		
	}
}
