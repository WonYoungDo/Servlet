package com.tawny.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tawny.common.MysqlService;

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		// 접속
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `real_estate`";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		out.println("<html><head><title>매물리스트</title></head><body>");
			try {
				while(resultSet.next()) {
					int realtorld = resultSet.getInt("realtorld");
					String address = resultSet.getString("address");
					int area = resultSet.getInt("area");
					String type = resultSet.getString("type");
					int price = resultSet.getInt("price");
					int renPrice = resultSet.getInt("renPrice");
					
					// if() {
						out.println("<div>매물주소 : " + address + ", 면적 : " + area + ", 타입 : " + type + "</div>");
						
					// }
				}
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		out.println("</body></html>");		
	
			
		
	}
}
