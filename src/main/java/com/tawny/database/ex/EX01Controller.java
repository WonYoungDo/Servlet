package com.tawny.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tawny.common.MysqlService;

@WebServlet("/db/ex01")
public class EX01Controller extends HttpServlet {
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
//		MysqlService mysqlService = new MysqlService();
		MysqlService mysqlService = MysqlService.getInstance();
		
		
		
		// 접속
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `used_goods`";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		out.println("<html><head><title>중고목록</title></head><body>");
		try {
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div> 제목 : " + title + " 가격 : " + price + "</div>");
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		String insertQuery = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `image`, `createdAT`, `updatedAT`)\r\n"
				+ "VALUE\r\n"
				+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 까탌스러워요', NULL);";
		int count = mysqlService.update(insertQuery);
		
		out.println("<div>삽입된 행의 개수 : " + count + "</div>");
		
		out.println("</body></html>");
		
		
		
		
		
		// mysql 접속 후 조회
		// 접속
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속 주소, 아이디, 비밀번호
//			String url = "jdbc:mysql://localhost:3306/tawny-99";
//			String userId = "root";
//			String password = "root";
//			
//			// 접속
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			Statement statment = connection.createStatement();
//			
//			// 쿼리 수행
//			String selectQuery = "SELECT * FROM `used_goods`";
//			ResultSet resultSet =  statement.executeQuery(selectQuery);
//			
//			out.println("<html><head><title>중고목록</title></head><body>");
//			
//			while(resultSet.next()) {
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				
//				out.println("<div> 제목 : " + title + " 가격 : " + price + "</div>");
//			}
//			
//			out.println("</body></html>");
//			
//		} catch (SQLException e) {
//			
//			e.printStackTrace();
//		}
	
	}
}
