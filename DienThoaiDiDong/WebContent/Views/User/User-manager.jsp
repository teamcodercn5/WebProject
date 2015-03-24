<%@page import="dao.AccountDAOImpl,model.Account"%>
<%@page import="dao.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String user = (String) session.getAttribute("user");
	if (user == null) {
		response.sendRedirect("../Homepage.jsp");
	}
	AccountDAO accDAO = new AccountDAOImpl();
	Account acc = accDAO.getAccount(user);
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang quản lý tài khoản</title>
<link rel="stylesheet" type="text/css" href="../../CSS/Frame/Top.css" />
<link rel="stylesheet" type="text/css" href="../../CSS/Frame/Footer.css" />
<link rel="stylesheet" type="text/css" href="../../CSS/Homepage.css" />
<link rel="shortcut icon" href="../../Images/Frame/Icon.png" type="image/x-icon" />
<link rel="icon" href="../../Images/Frame/Icon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="../../CSS/User/User-manager.css" />
<link rel="stylesheet" type="text/css"
	href="../${sessionScope.cssuser }" />
</head>
<%@ include file="../Frame/Top.jsp"%>
<body>
	<div class="view-thongtin">
		<h1>Thông tin cá nhân của bạn.</h1>
		<br> <br>
		<form action="Update-account.jsp" method="post" id="formUpdate">
			<table>
				<tr>
					<td>Họ tên</td>
					<td><input type="text" value="<%=acc.getHoten()%>"
						name="hoten" id="hoten" /></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" value="<%=acc.getEmail()%>"
						name="email" id="email" /></td>
				</tr>
				<tr>
					<td>Giới tính</td>
					<td><%=acc.getGioitinh()%></td>
				</tr>
				<tr>
					<td>Địa chỉ</td>
					<td><input type="text" value="<%=acc.getDiachi()%>"
						name="diachi" id="diachi" /></td>
				</tr>
				<tr>
					<td>Ngày sinh</td>
					<td><input type="text" value="<%=acc.getNgaysinh()%>"
						name="ngaysinh" id="ngaysinh" /></td>
				</tr>
				<tr>
					<td>Số điện thoại</td>
					<td><input type="text" value="<%=acc.getSodt()%>" name="sodt"
						id="sodt" /></td>
				</tr>
				<tr>
					<td>Loại thẻ</td>
					<td><%=acc.getLoaithe()%></td>
				</tr>
				<tr>
					<td>Mã thẻ</td>
					<td><%=acc.getMathe()%></td>
				</tr>
			</table>
			<br> <input type="button" value="Cập nhật"
				onclick="checkUpdate()" /> <input type="submit"
				value="Đổi mật khẩu" onclick="form.action='Change-password.jsp', method='post'" />
		</form>
		<br> ${sessionScope.thongbao }
		<%
			session.removeAttribute("thongbao");
		%>
	</div>
	<script type="text/javascript" src="../../JS/Frame/Top.js"></script>
	<script type="text/javascript" src="../../JS/User/User-manager.js"></script>
</body>
<%@ include file="../Frame/Footer.jsp"%>
</html>