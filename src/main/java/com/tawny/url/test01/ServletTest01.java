package com.tawny.url.test01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTest01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("UTF-8");
	
		response.setContentType("text/plain");
		
		
		Date now = new Date();

		SimpleDateFormat format = new SimpleDateFormat("yyyy년 M월 dd일");
		String formatDate = format.format(now);
		
		PrintWriter out = response.getWriter();
		out.print("오늘의 날짜는 " + formatDate);
		
		
		
	}
	
	
	
}
