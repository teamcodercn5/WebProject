
<%
	if (session.getAttribute("checkNV") == null) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@page import="model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang nhân viên</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<%
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		ArrayList<SanPham> alsp = new ArrayList<SanPham>();
		alsp.addAll(spDAO.getListSanPham());
		CauHinhDAO chDAO = new CauHinhDAOImpl();
		ArrayList<CauHinh> alch = new ArrayList<CauHinh>();
		alch.addAll(chDAO.getListCauHinh());
	%>
	<a href="Nhan-vien-information.jsp">Xem thông tin cá nhân và thay
		đổi mật khẩu</a>
	<br>
	<a href="List-san-pham.jsp">Danh sách sản phẩm</a>
	<br>
	<a href="List-cau-hinh.jsp">Danh sách cấu hình</a>
	<br>
	<a href="List-gioi-thieu.jsp">Danh sách giới thiệu sản phẩm</a>
	<br>
	<a></a>
	<br>
	<a href="../Homepage.jsp">Homepage</a>
	<br>
	<a href="../Login/Logout">Đăng xuất</a>
</body>
</html>