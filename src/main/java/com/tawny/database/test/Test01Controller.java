package com.tawny.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tawny.common.MysqlService;

public class Test01Controller extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		// 접속
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `real_estate`";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		while(resultSet.next()) {
			resultSet.getInt("realtorld");
			resultSet.getString("");
			resultSet.getInt("");
			resultSet.getString("");
			resultSet.getInt("");
			resultSet.getInt("");
		}
		
		
	}
}
