<%@page import="dao.*"%>
<%@page import="model.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("checkNV") == null) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang sửa cấu hình</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<h1>Sửa cấu hình</h1>
	<%
		CauHinhDAO chDAO = new CauHinhDAOImpl();
		CauHinh ch = chDAO.getCauHinh(request.getParameter("masp"));
	%>
	<br>
	<form action="Edit-cau-hinh?masp=<%=ch.getMasp()%>" method="post"
		id="formNhapLieuCH">
		<table align="center" border="1px solid" bordercolor="black"
			style="border-collapse: collapse;">
			<tr>
				<td>Mã sp:</td>
				<td><%=ch.getMasp()%></td>
			</tr>
			<tr>
				<td>Màn hình:</td>
				<td><input type="text" value="<%=ch.getManhinh()%>" name="ch" /></td>
			</tr>
			<tr>
				<td>CPU:</td>
				<td><input type="text" value="<%=ch.getCpu()%>" name="ch" /></td>
			</tr>
			<tr>
				<td>RAM:</td>
				<td><input type="text" value="<%=ch.getRam()%>" name="ch" /></td>
			</tr>
			<tr>
				<td>OS:</td>
				<td><input type="text" value="<%=ch.getOs()%>" name="ch" /></td>
			</tr>
			<tr>
				<td>Camera chính:</td>
				<td><input type="text" value="<%=ch.getCamerachinh()%>"
					name="ch" /></td>
			</tr>
			<tr>
				<td>Camera phụ:</td>
				<td><input type="text" value="<%=ch.getCameraphu()%>" name="ch" /></td>
			</tr>
			<tr>
				<td>ROM:</td>
				<td><input type="text" value="<%=ch.getRom()%>" name="ch" /></td>
			</tr>
			<tr>
				<td>SD:</td>
				<td><input type="text" value="<%=ch.getSd()%>" name="ch" /></td>
			</tr>
			<tr>
				<td>Pin:</td>
				<td><input type="text" value="<%=ch.getPin()%>" name="ch" /></td>
			</tr>
		</table>
		<input type="button" value="Lưu" id="saveCauHinh" /> <input
			type="submit" value="Hủy bỏ"
			onclick="form.action='List-cau-hinh.jsp', method='post'" />
	</form>
	<script type="text/javascript" src="../../JS/NhanVien/Edit-cau-hinh.js"></script>
</body>
</html>