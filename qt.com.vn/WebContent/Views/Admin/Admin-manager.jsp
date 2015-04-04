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
<link rel="shortcut icon" href="../../Images/Frame/Icon.png"
	type="image/x-icon" />
<link rel="icon" href="../../Images/Frame/Icon.png" type="image/x-icon" />
<title>Trang quản lý của Admin</title>
</head>
<body>
	<h1>Giao diện quản lý Admin</h1>
	<br>
	<a href="List-nhan-vien.jsp">Quản lý nhân viên</a>
	<br>
	<%
		session.setAttribute("currentUrl", request.getRequestURL()
				.toString());
	%>
</body>
</html>