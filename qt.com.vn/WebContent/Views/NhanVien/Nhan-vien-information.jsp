<%@page import="model.NhanVien"%>
<%@page import="dao.NhanVienDAOImpl"%>
<%@page import="dao.NhanVienDAO"%>
<%
	if (session.getAttribute("checkNV") == null) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
<title>Trang thông tin cá nhân</title>
</head>
<body>
	<h1>Thông tin cá nhân của bạn</h1>
	<br>
	<%
		NhanVienDAO nvDAO = new NhanVienDAOImpl();
		NhanVien nv = nvDAO.getNhanVien((String) session
				.getAttribute("user"));
	%>
	<table align="center" border="1px solid" bordercolor="black"
		style="border-collapse: collapse;">
		<tr>
			<td>User:</td>
			<td><%=nv.getUser()%></td>
		</tr>
		<tr>
			<td>Họ tên:</td>
			<td><%=nv.getHoten()%></td>
		</tr>
		<tr>
			<td>Nghiệp vụ:</td>
			<td><%=nv.getNghiepvu()%></td>
		</tr>
		<tr>
			<td>CMND:</td>
			<td><%=nv.getCmnd()%></td>
		</tr>
		<tr>
			<td>Mức lương:</td>
			<td><%=nv.getMucluong()%></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><%=nv.getEmail()%></td>
		</tr>
		<tr>
			<td>Số điện thoại:</td>
			<td><%=nv.getSodt()%></td>
		</tr>
	</table>
	<br>
	<br>
	<a href="Change-password.jsp">Thay đổi mật khẩu</a>
	<br> ${sessionScope.thongbao }
	<%
		session.removeAttribute("thongbao");
	%>
	<br>
	<a href="Nhan-vien.jsp">Quay lại</a>
	<br>
	<a href="../Login/Logout">Đăng xuất</a>
</body>
</html>