
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
<title>Trang nhập liệu sản phẩm</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<h1>Nhập liệu sản phẩm</h1>
	<br>
	<form action="Save-san-pham" method="post" id="formNhapLieu">
		<table align="center" border="1px solid" bordercolor="black"
			style="border-collapse: collapse;">
			<tr>
				<td>Mã sản phẩm</td>
				<td><input type="text" name="sp"></td>
			</tr>
			<tr>
				<td>Tên sản phẩm</td>
				<td><input type="text" name="sp"></td>
			</tr>
			<tr>
				<td>Giá</td>
				<td><input type="text" name="sp"></td>
			</tr>
			<tr>
				<td>Bảo hành</td>
				<td><input type="text" name="sp"></td>
			</tr>
			<tr>
				<td>Phụ kiện</td>
				<td><input type="text" name="sp"></td>
			</tr>
			<tr>
				<td>Tình trạng</td>
				<td><input type="text" name="sp"></td>
			</tr>
		</table>
		<br> <input type="button" value="Lưu" id="save"> <input
			type="submit" value="Hủy bỏ"
			onclick="form.action='List-san-pham.jsp', method='post'" />
	</form>
	<br> ${sessionScope.thongbao }
	<%
		session.removeAttribute("thongbao");
	%>
	<script type="text/javascript"
		src="../../JS/NhanVien/Nhap-lieu-san-pham.js"></script>
	<br>
	<a href="../Login/Logout">Đăng xuất</a>
</body>
</html>