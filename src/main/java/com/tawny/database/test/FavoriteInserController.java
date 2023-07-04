package com.tawny.database.test;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tawny.common.MysqlService;
@WebServlet("/db/favorite/inset")
public class FavoriteInserController extends HttpServlet{
	
	// 이름과 url을 전달 받고, insert 기능 수행
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
	
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `favorite` (`name`, `url`) \r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "');";
		mysqlService.update(query);
		
//		response.sendRedirect("/database/test/favorite_")
	}
}
