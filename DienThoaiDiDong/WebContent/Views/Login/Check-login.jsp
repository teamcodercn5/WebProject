<%@page import="config.IODatabase,java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String user = request.getParameter("user");
	String pass = request.getParameter("pass");
	if (user.equals("admin") && pass.equals("admin")) {
		session.setAttribute("cssuser", "../CSS/Frame/Css-user.css");
		session.setAttribute("user", user);
	} else {
		String sqlCommand = "select Password from account where User='"
				+ user + "'";
		IODatabase io = new IODatabase();
		ResultSet rs = io.getResultSet(sqlCommand);
		if (rs.next() && pass.equals(rs.getString(1))) {
			session.setAttribute("cssuser", "../CSS/Frame/Css-user.css");
			session.setAttribute("user", user);
			io.closeConnection();
		} else {
			session.setAttribute("thongbao", "Đăng nhập thất bại.");
			io.closeConnection();
			response.sendRedirect("Login.jsp");
			return;
		}
	}
	response.sendRedirect("../Reload-page.jsp");
%>