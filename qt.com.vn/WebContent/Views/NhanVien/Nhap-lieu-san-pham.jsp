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
<title>Trang nhập liệu sản phẩm</title>
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
				<td>Tên sản phẩm</td>
				<td><input type="text" name="tensp"></td>
			</tr>
			<tr>
				<td>Giá</td>
				<td><input type="text" name="giasp"></td>
			</tr>
			<tr>
				<td>Bảo hành</td>
				<td><input type="text" name="baohanh"></td>
			</tr>
			<tr>
				<td>Phụ kiện</td>
				<td><input type="text" name="phukien"></td>
			</tr>
			<tr>
				<td>Tình trạng</td>
				<td><input type="text" name="tinhtrang"></td>
			</tr>
		</table>
		<br>
		<div align="center">
			<input type="submit" value="Thêm" name="them"> <input
				type="submit" value="Quay lại" name="quaylai">
		</div>
	</form>
</body>
</html>