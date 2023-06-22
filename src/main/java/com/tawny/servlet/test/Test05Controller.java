package com.tawny.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class Test05Controller extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		// response.setContentType("application/json");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		int number = Integer.parseInt(request.getParameter("number"));
		
		// String numberString = request.getParameter("number");
		// int number = Integer.parseInt(numberString);
		
		out.println("<html><head><tithle></title></head> <body><ul>");
		
		for(int i = 1; i <= 9; i++) {
			int result = number * i;
			out.println("<li>" + number + " X " + i + " = " + number * i + "</li>");
		}
		out.println("</ul></body></html>");
		
		
		
			
	}
	
}
