<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String user = (String) session.getAttribute("user");
	if (user.equals("admin")) {
		response.sendRedirect("Admin/Admin-manager.jsp");
	} else {
		response.sendRedirect("User/User-manager.jsp");
	}
%>