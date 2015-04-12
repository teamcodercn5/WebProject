<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	if (session.getAttribute("checkNV") == null) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@page import="model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách giới thiệu sản phẩm</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
<link rel="stylesheet" href="../../CSS/NhanVien/List-gioi-thieu.css"
	type="text/css" />
</head>
<body>
	<h1>${sessionScope.thongbao }</h1>
	<%
		session.removeAttribute("thongbao");
	%>
	<a href="Nhan-vien.jsp">Quay lại</a>
	<br> Nhập mã sản phẩm muốn xem giới thiệu
	<form action="Save-gioi-thieu" method="post" id="formGioiThieu">
		<input type="text" value="" id="getGT" /> <input type="button"
			value="Xem" id="btnViewGT">
		<table align="left" border="1px solid" bordercolor="#cec6ce"
			style="border-collapse: collapse;">
			<tr>
				<%
					String masp = request.getParameter("masp");
					GioiThieuDAO gtDAO = new GioiThieuDAOImpl();
					GioiThieu tt = gtDAO.getGioiThieu(masp);
					if (masp != null) {
						out.println("<td>" + masp + "</td>");
					} else {
						out.println("<td>Mã sản phẩm</td>");
					}
				%>
				<td>Giới thiệu sản phẩm</td>
				<%
					if (masp != null) {
						out.println("<td><a href='Edit-gioi-thieu.jsp?masp="
								+ tt.getMasp() + "'>Sửa</td>");
						out.println("<td><a href='Xoa-gioi-thieu?masp="+ tt.getMasp() + "'>Xóa</td>");
					}
				%>
			</tr>
			<%
				if (masp != null) {
					out.println("<tr>");
					out.println("<td></td>");
					out.println("<td>" + tt.getChitiet() + "</td>");
					out.println("<td colspan='2'></td>");
					out.println("</tr>");
				}
			%>
			<tr>
				<td><input type="text" name="gt" /></td>
				<td><textarea rows="20" cols="140" name="gt"></textarea></td>
				<td><input type="button" value="Add" id="btnAddGT" /></td>
			</tr>
		</table>
	</form>
	<script type="text/javascript"
		src="../../JS/NhanVien/List-gioi-thieu.js"></script>
</body>
</html>