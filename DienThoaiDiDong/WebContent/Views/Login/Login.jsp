<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	if (session.getAttribute("user") != null) {
		response.sendRedirect("../Homepage.jsp");
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet" type="text/css" href="../../CSS/Login/Login.css" />
<link rel="shortcut icon" href="../../Images/Frame/Icon.png" type="image/x-icon" />
<link rel="icon" href="../../Images/Frame/Icon.png" type="image/x-icon" />
</head>
<body>
	<form action="Check-login.jsp" method="post" id="formLogin">
		<table>
			<tr>
				<td>Tài khoản:</td>
				<td><input type="text" id="user" name="user" value="" /></td>
			</tr>
			<tr>
				<td>Mật khẩu:</td>
				<td><input type="password" id="pass" name="pass" value="" /></td>
			</tr>
		</table>
		<input type="button" value="Đăng nhập" onclick="checkFormLogin()" />
		<input type="button" value="Quên mật khẩu" onclick="" />
	</form>
	<br> ${sessionScope.thongbao }
	<%
		session.removeAttribute("thongbao");
	%>
	<script type="text/javascript" src="../../JS/Frame/Check-form-login.js"></script>
</body>
</html>