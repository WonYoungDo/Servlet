package com.tawny.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		 response.setContentType("application/json");
		//response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// 이름과 생년월일을 전달 받고, 이름과 나이를 표로 만들어 준다.
		String name = request.getParameter("name"); // 전달 받기 
		String birthday = request.getParameter("birthday"); // 20201122
		
		String yearString = birthday.substring(0, 4);
		int year = Integer.parseInt(yearString);
		
		int age = 2023 - year - 1;
		
		//out.println("<html><head><title>정보</title></head> <body>");
		//out.println("<table border=1> <tr><td>이름</td></td>" + name + "</td> </tr>");
		//out.println("<tr><td>나이</td><td>" + age + "</td></tr></table></body></html>");
		
		String monthString = birthday.substring(0);
		
		
		// response에 테이터 담기
		// 규격 json
		// name : 원영도, age : 25
		// {"name":"원영도", "age":"25"}
		// json : Array
		// ["김인규", "유재석"]
		// 
		// 
		// 		
		
		
		
		//out.println(age);

		// {"name":"원영도", "age":"25"}
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
	}
	
	

}
