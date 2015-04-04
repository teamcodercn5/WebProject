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
<link rel="stylesheet" href="../../CSS/Nhanvien/Nhan-vien.css" type="text/css"/>
</head>
<body>
	<div>
		<a href="Nhap-lieu-san-pham.jsp">Nhập liệu cho sản phẩm</a><br>
		<a href="Nhap-lieu-gioi-thieu-san-pham.jsp">Nhập liệu cấu hình cho sản phẩm</a><br>
		<a href="Nhap-lieu-san-pham.jsp">Nhập liệu thông tin cho sản phẩm</a><br>
		<a href="Nhap-lieu-tin-tuc.jsp">Nhập liệu tin tức</a><br>
	</div>
</body>
</html>