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
<title>Trang nhập liệu tin tức</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css" type="text/css"/>
</head>
<body>
<form action="" method="get">
		<table align="center">
			<tr>
				<td>Tiêu đề</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>Nội dung</td>
				<td><textarea style="width: 600px; height: 480px;"
						name="body"></textarea></td>
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