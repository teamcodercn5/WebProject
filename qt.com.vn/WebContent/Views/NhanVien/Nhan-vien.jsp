<%
	if(session.getAttribute("checkNV")==null){
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang nhân viên</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css" type="text/css"/>
</head>
<body>
	<h1>Giao diện nhân viên nhập liệu</h1>
	<br>
	<div>
		<a href="Nhan-vien-information.jsp">Xem thông tin cá nhân</a><br>
		<a href="List-san-pham.jsp">Nhập liệu cho sản phẩm</a><br>
		<a href="Nhap-lieu-gioi-thieu-san-pham.jsp">Nhập liệu cấu hình cho sản phẩm</a><br>
		<a href="Nhap-lieu-san-pham.jsp">Nhập liệu thông tin cho sản phẩm</a><br>
		<a href="Nhap-lieu-tin-tuc.jsp">Nhập liệu tin tức</a><br>
		<br>
		<a href="../Login/Logout">Đăng xuất</a>
	</div>
</body>
</html>