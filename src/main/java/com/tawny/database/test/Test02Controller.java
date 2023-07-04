package com.tawny.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tawny.common.MysqlService;

@WebServlet("/db/favorite/delete")
public class Test02Controller extends HttpServlet{
	
	// 특정 사이트 정보를 삭제한다.
	// id를 전달 받고, 일치하는 행을 삭제한다.
	// 보안, 데이터가 길어서 문제가 있으면 post
	// 기본은 get
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `favorite` WHERE `id` = " + id +";";
		
		mysqlService.update(query);
		
		//리스트 페이지로 이동 
		response.sendRedirect("/database/test/favorite_list.jsp");
	}
	
	
}
