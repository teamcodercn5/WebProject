<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	if(session.getAttribute("user")!=null){
		response.sendRedirect("Homepage.jsp");
	}
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng ký tài khoản</title>
<link rel="stylesheet" type="text/css" href="../CSS/Frame/Top.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Frame/Footer.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Login/Login.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Register.css" />
<link rel="shortcut icon" href="../Images/Frame/Icon.png" type="image/x-icon" />
<link rel="icon" href="../Images/Frame/Icon.png" type="image/x-icon" />
</head>
<%@ include file="Frame/Top.jsp"%>
<body>
	<div class="register_form">
		<form action="New-account.jsp" method="post" id="formRegister">
			<table align="center">
				<tr>
					<td>Tài khoản</td>
					<td><input type="text" value="" id="user" name="user" /></td>
				</tr>
				<tr>
					<td>Mật khẩu</td>
					<td><input type="password" value="" id="pass1" name="pass" /></td>
				</tr>
				<tr>
					<td>Nhập lại mật khẩu</td>
					<td><input type="password" value="" id="pass2" /></td>
				</tr>
				<tr>
					<td>Họ tên</td>
					<td><input type="text" value="" id="hoten" name="hoten" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" value="" id="email" name="email" /></td>
				</tr>
				<tr>
					<td>Giới tính</td>
					<td>Nam <input type="radio" value="Nam" name="gioitinh"
						name="gioitinh" /> &nbspNữ <input type="radio" value="Nữ"
						name="gioitinh" name="gioitinh" /></td>
				</tr>
				<tr>
					<td>Địa chỉ</td>
					<td><input type="text" value="" id="diachi" name="diachi" /></td>
				</tr>
				<tr>
					<td>Ngày sinh</td>
					<td><input type="text" value="" id="ngaysinh" name="ngaysinh" /></td>
				</tr>
				<tr>
					<td>Số điện thoại</td>
					<td><input type="text" value="" id="sodt" name="sodt" /></td>
				</tr>
				<tr>
					<td>Loại thẻ</td>
					<td>Agribank <input type="radio" value="Agribank" name="the" />Vietinbank
						<input type="radio" value="VietinBank" name="the" />Techcombank <input
						type="radio" value="Techcombank" name="the" /></td>
				</tr>
				<tr>
					<td>Mã thẻ</td>
					<td><input type="text" value="" id="mathe" name="mathe" /></td>
				</tr>
			</table>
			<br> <input type="button" value="Đăng ký"
				onclick="checkFormRegister()" /> <input type="submit"
				value="Hủy bỏ" onclick="form.action='Homepage.jsp',method='post'" />
		</form>
		${sessionScope.thongbao }
		<%
			session.removeAttribute("thongbao");
			session.setAttribute("currentUrl", request.getRequestURL()
					.toString());
		%>
	</div>
	<script type="text/javascript" src="../JS/Frame/Top.js"></script>
	<script type="text/javascript" src="../JS/Register.js"></script>
</body>
<%@ include file="Frame/Footer.jsp"%>
</html>