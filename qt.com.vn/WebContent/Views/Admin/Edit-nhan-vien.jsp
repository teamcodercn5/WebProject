<%
	if (!((String) session.getAttribute("user")).equals("admin")) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@page import="model.NhanVien"%>
<%@page import="dao.NhanVienDAOImpl"%>
<%@page import="dao.NhanVienDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sửa nhân viên</title>
</head>
<body style="text-align: center;">
	<h1>Giao diện sửa nhân viên</h1>
	<br>
	<%
		NhanVienDAO nvDAO = new NhanVienDAOImpl();
		NhanVien nv = nvDAO.getNhanVien(request.getParameter("user"));
	%>
	<form action="Edit-nhan-vien?user=<%=nv.getUser()%>" method="post"
		id="formEdit">
		<table align="center" border="1px solid" bordercolor="black"
			style="border-collapse: collapse; text-align: left;">
			<tr>
				<td>User:</td>
				<td><%=nv.getUser()%></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" value="<%=nv.getPass()%>" name="pass" /></td>
			</tr>
			<tr>
				<td>Họ tên:</td>
				<td><input type="text" value="<%=nv.getHoten()%>" name="hoten" /></td>
			</tr>
			<tr>
				<td>Nghiệp vụ:</td>
				<td><input type="text" value="<%=nv.getNghiepvu()%>"
					name="nghiepvu" /></td>
			</tr>
			<tr>
				<td>CMND</td>
				<td><input type="text" value="<%=nv.getCmnd()%>" name="cmnd" /></td>
			</tr>
			<tr>
				<td>Mức lương:</td>
				<td><input type="text" value="<%=nv.getMucluong()%>"
					name="mucluong" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" value="<%=nv.getEmail()%>" name="email" /></td>
			</tr>
			<tr>
				<td>Số điện thoại</td>
				<td><input type="text" value="<%=nv.getSodt()%>" name="sodt" /></td>
			</tr>
		</table>
		<br> <input type="button" value="Lưu" id="save" /> <input
			type="submit" value="Hủy bỏ"
			onclick="form.action='List-nhan-vien.jsp',method='post'" />
	</form>
	<script type="text/javascript" src="../../JS/Admin/Edit-nhan-vien.js"></script>
</body>
</html>