
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
<title>Thay đổi mật khẩu</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<form action="Save-password-nhan-vien" method="post"
		id="formChangePass">
		<table align="center" border="1px solid" bordercolor="black"
			style="border-collapse: collapse;">
			<tr>
				<td>Mật khẩu cũ</td>
				<td><input type="password" value="" name="currentPass"
					id="currentPass" /></td>
			</tr>
			<tr>
				<td>Mật khẩu mới</td>
				<td><input type="password" value="" name="newPass1"
					id="newPass1" /></td>
			</tr>
			<tr>
				<td>Nhập lại mật khẩu</td>
				<td><input type="password" value="" name="newPass2"
					id="newPass2" /></td>
			</tr>
		</table>
		<br> <input type="button" value="Đồng ý"
			onclick="checkChangePass()" /> <input type="submit" value="Hủy bỏ"
			onclick="form.action='Nhan-vien-information.jsp', method='post'" />
	</form>
	<br>
	${sessionScope.thongbao }
	<%session.removeAttribute("thongbao"); %>
	<script type="text/javascript" src="../../JS/User/Change-password.js"></script>
</body>
</html>