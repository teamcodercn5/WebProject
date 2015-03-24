<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,config.IODatabase"%>
<%
	String currentPass = request.getParameter("currentPass");
	String user = (String) session.getAttribute("user");
	String sqlCommand = "select Password from account where User='"
			+ user + "'";
	IODatabase io = new IODatabase();
	ResultSet rs = io.getResultSet(sqlCommand);
	if (rs.next() && rs.getString(1).equals(currentPass)) {
		sqlCommand = "update account set password=? where user=?";
		String values[] = { request.getParameter("newPass1"), user };
		int[] indexes = { 1, 2 };
		io.executeUpdate(sqlCommand, values, indexes);
		session.setAttribute("thongbao",
				"Thay đổi mật khẩu thành công.");
		io.closeConnection();
		response.sendRedirect("User-manager.jsp");
		return;
	}
	session.setAttribute("thongbao", "Mật khẩu cũ không đúng.");
	response.sendRedirect("Change-password.jsp");
%>