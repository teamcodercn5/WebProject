<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đổi mật khẩu</title>
<link rel="stylesheet" type="text/css" href="../../CSS/Frame/Top.css" />
<link rel="stylesheet" type="text/css" href="../../CSS/Frame/Footer.css" />
<link rel="stylesheet" type="text/css" href="../../CSS/Homepage.css" />
<link rel="stylesheet" type="text/css"
	href="../../CSS/User/User-manager.css" />
<link rel="stylesheet" type="text/css"
	href="../${sessionScope.cssuser }" />
<link rel="shortcut icon" href="../../Images/Frame/Icon.png"
	type="image/x-icon" />
<link rel="icon" href="../../Images/Frame/Icon.png" type="image/x-icon" />
</head>
<%@ include file="../Frame/Top.jsp"%>
<body>
	<div class="view-thongtin">
		<br>
		<h1>Thay đổi mật khẩu</h1>
		<br> <br>
		<form action="Save-password" method="post" id="formChangePass">
			<table>
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
				onclick="form.action='User-manager.jsp', method='post'" />
		</form>
		<br> ${sessionScope.thongbao }
		<%
			session.removeAttribute("thongbao");
		%>
	</div>
	<script type="text/javascript" src="../../JS/Frame/Top.js"></script>
	<script type="text/javascript" src="../../JS/User/Change-password.js"></script>
</body>
<%@ include file="../Frame/Footer.jsp"%>
</html>