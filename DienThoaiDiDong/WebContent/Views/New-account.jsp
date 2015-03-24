<%@page import="dao.AccountDAOImpl"%>
<%@page import="dao.AccountDAO"%>
<%@page import="model.Account"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="config.IODatabase"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	AccountDAO accDAO = new AccountDAOImpl();
	String user = request.getParameter("user");
	if (accDAO.checkAccount(user)) {
		session.setAttribute("thongbao",
				"Tài khoản này đã được sử dụng");
		accDAO.closeConnection();
		response.sendRedirect((String) session
				.getAttribute("currentUrl"));
		return;
	}
	String pass = request.getParameter("pass");
	String hoten = request.getParameter("hoten");
	String email = request.getParameter("email");
	String[] temp = request.getParameterValues("gioitinh");
	String gioitinh = "";
	for (int i = 0; i < temp.length; i++) {
		if (!temp[i].equals("")) {
			gioitinh = temp[i];
		}
	}
	String diachi = request.getParameter("diachi");
	String ngaysinh = request.getParameter("ngaysinh");
	String sodt = request.getParameter("sodt");
	temp = request.getParameterValues("the");
	String loaithe = "";
	for (int i = 0; i < temp.length; i++) {
		if (!temp[i].equals("")) {
			loaithe = temp[i];
		}
	}
	String mathe = request.getParameter("mathe");
	String values[] = { user, pass, hoten, email, gioitinh, diachi,
			ngaysinh, sodt, loaithe, mathe };
	Account acc = new Account();
	acc.setAccount(values);
	accDAO.insertAccount(acc);
	accDAO.closeConnection();
	response.sendRedirect("Homepage.jsp");
%>