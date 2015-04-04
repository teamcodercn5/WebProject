
<%
	if (!((String) session.getAttribute("user")).equals("admin")) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm nhân viên mới</title>
</head>
<body>
	<h1>Thêm nhân viên mới</h1>
	<br>
	${sessionScope.thongbao }
	<%session.removeAttribute("thongbao"); %>
	<form action="New-nhan-vien" method="post" id="formNewNV">
		<table>
			<tr>
				<td>User:</td>
				<td><input type="text" value="" name="user" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" value="" name="pass" /></td>
			</tr>
			<tr>
				<td>Họ tên:</td>
				<td><input type="text" value="" name="hoten" /></td>
			</tr>
			<tr>
				<td>Nghiệp vụ:</td>
				<td><input type="text" value="" name="nghiepvu" /></td>
			</tr>
			<tr>
				<td>CMND:</td>
				<td><input type="text" value="" name="cmnd" /></td>
			</tr>
			<tr>
				<td>Mức lương:</td>
				<td><input type="text" value="" name="mucluong" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" value="" name="email" /></td>
			</tr>
			<tr>
				<td>Số điện thoại:</td>
				<td><input type="text" value="" name="sodt" /></td>
			</tr>
		</table>
		<br> <input type="button" value="Lưu" id="save" /> <input
			type="submit" value="Hủy bỏ"
			onclick="form.action='List-nhan-vien.jsp',method='post'" />
	</form>
	<script type="text/javascript" src="../../JS/Admin/New-nhan-vien.js"></script>
	<%
		session.setAttribute("currentUrl", request.getRequestURL()
				.toString());
	%>
</body>
</html>