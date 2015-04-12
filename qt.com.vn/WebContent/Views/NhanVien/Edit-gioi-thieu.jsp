<%@page import="dao.GioiThieuDAOImpl"%>
<%@page import="dao.GioiThieuDAO"%>
<%@page import="model.GioiThieu"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("checkNV") == null) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang sửa giới thiệu sản phẩm</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<h1>Sửa giới thiệu sản phẩm</h1>
	<%
		GioiThieuDAO gtDAO = new GioiThieuDAOImpl();
		GioiThieu gt = gtDAO.getGioiThieu(request.getParameter("masp"));
	%>
	<br>
	<form action="Edit-gioi-thieu?masp=<%=gt.getMasp()%>" method="post"
		id="formNhapLieuGT">
		<table align="center" border="1px solid" bordercolor="black"
			style="border-collapse: collapse;">
			<tr>
				<td>Mã sp:</td>
				<td><%=gt.getMasp()%></td>
			</tr>
			<tr>
				<td>Giới thiệu sản phẩm:</td>
				<td><textarea rows="30" cols="150" name="chitiet"><%=gt.getChitiet()%></textarea></td>
			</tr>
		</table>
		<input type="button" value="Lưu" id="saveGioiThieu" /> <input
			type="submit" value="Hủy bỏ"
			onclick="form.action='List-gioi-thieu.jsp', method='post'" />
	</form>
	<script type="text/javascript" src="../../JS/NhanVien/Edit-gioi-thieu.js"></script>
</body>
</html>