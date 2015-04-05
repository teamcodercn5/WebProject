
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
<title>Trang nhập liệu cấu hình</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<form action="" method="get">
		<table align="center" border="1px solid" bordercolor="black"
			style="border-collapse: collapse;">
			<tr>
				<td>Mã sản phẩm</td>
				<td><input type="text" name="masp"></td>
			</tr>
			<tr>
				<td>Màn hình</td>
				<td><input type="text" name="manhinh"></td>
			</tr>
			<tr>
				<td>CPU</td>
				<td><input type="text" name="cpu"></td>
			</tr>

			<tr>
				<td>RAM</td>
				<td><input type="text" name="ram"></td>
			</tr>
			<tr>
				<td>OS</td>
				<td><input type="text" name="os"></td>
			</tr>
			<tr>
				<td>Camera chính</td>
				<td><input type="text" name="camerachinh"></td>
			</tr>
			<tr>
				<td>Camera phụ</td>
				<td><input type="text" name="cameraphu"></td>
			</tr>
			<tr>
				<td>Rom</td>
				<td><input type="text" name="rom"></td>
			</tr>
			<tr>
				<td>SD</td>
				<td><input type="text" name="sd"></td>
			</tr>
			<tr>
				<td>Pin</td>
				<td><input type="text" name="pin"></td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="submit" value="Thêm" name="them"> <input
				type="submit" value="Quay lại" name="quaylai">
		</div>
	</form>
	<br>
	<br>
	<a href="../Login/Logout">Đăng xuất</a>
</body>
</html>