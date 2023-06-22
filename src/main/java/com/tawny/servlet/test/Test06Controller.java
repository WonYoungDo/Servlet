package com.tawny.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		// number 전달 받기
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		int addtion = number1 + number2;
		int subtraction = number1 - number2;
		int multlplication = number1 * number2;
		int division = number1 / number2;
		
		out.println("{\"addtoion\": \"" + addtion + ",");
		out.println("\"subtraction\":" + subtraction + ",");
		out.println("\"multlplication\":" + multlplication + ",");
		out.println("\"division\":" + division + ",\"}");
		
		
		
	}
		
	
}
