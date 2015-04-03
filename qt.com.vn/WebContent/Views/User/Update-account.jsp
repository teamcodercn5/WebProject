<%@page import="config.IODatabase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String hoten = request.getParameter("hoten");
	String email = request.getParameter("email");
	String diachi = request.getParameter("diachi");
	String ngaysinh = request.getParameter("ngaysinh");
	String sodt = request.getParameter("sodt");
	String user = (String) session.getAttribute("user");
	String sqlCommand = "update Account set hoten=?,email=?,diachi=?,ngaysinh=?,sodt=? where user=?";
	String values[] = { hoten, email, diachi, ngaysinh, sodt, user };
	int[] indexes = { 1, 2, 3, 4, 5, 6 };
	IODatabase io = new IODatabase();
	io.executeUpdate(sqlCommand, values, indexes);
	io.closeConnection();
	session.setAttribute("thongbao", "Cập nhật thông tin thành công.");
	response.sendRedirect("User-manager.jsp");
%>