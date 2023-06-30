package com.tawny.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	Connection connection = null;
	Statement statement = null;
	
	// 접속을 위한 기능 메소드 
	public void connect() {
		try {	
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 접속 주소, 아이디, 비밀번호
			String url = "jdbc:mysql://localhost:3306/tawny-99";
			String userId = "root";
			String password = "root";
			
			// 접속
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
	
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	// 쿼리 수행을 위한 기능 메소드
	public ResultSet select(String query) {
		try {
			ResultSet resultSet = statement.executeQuery(query);		
			return resultSet;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
	}
	
	// 접속 끊기 
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
	}
	
	
	
}
