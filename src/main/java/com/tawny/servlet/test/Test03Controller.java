package com.tawny.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat formatDate = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String formatToday = formatDate.format(now);
		
		
		out.println("<html><head><title>news</title></head><body></html>");
		out.println("<h2>[단독]고양이가 야옹해</h2>");
		out.println("기사 입력시간 : " + formatToday);
		out.println("<hr>");
		out.println("<p>끝</p></body></html>");
				
		
	}
}
