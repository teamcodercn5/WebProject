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
</head>
<body>
	<h1>${sessionScope.thongbao }</h1>
	<%
		session.removeAttribute("thongbao");
		GioiThieuDAO gtDAO = new GioiThieuDAOImpl();
		ArrayList<GioiThieu> algt = new ArrayList<GioiThieu>();
		algt.addAll(gtDAO.getListGioiThieu());
	%>
	<a href="Nhan-vien.jsp">Quay lại</a>
	<form action="Save-gioi-thieu" method="post" id="formGioiThieu">
		<table align="center" border="1px solid" bordercolor="#cec6ce"
			style="border-collapse: collapse;">
			<tr>
				<td>STT</td>
				<td style="width: 100px;">Mã SP</td>
				<td>Giới thiệu sản phẩm</td>
				<td><input type="button" value="Select All" id="selectAllGT" /></td>
				<td colspan="2"></td>
			</tr>
			<c:forEach var="tt" items="<%=algt%>" varStatus="i">
				<tr>
					<td>${i.index+1 }</td>
					<td>${tt.masp }</td>
					<td>${tt.chitiet }</td>
					<td><input type="checkbox" value="${tt.masp }" name="selectGT" /></td>
					<td><a href="Edit-gioi-thieu.jsp?masp=${tt.masp }">Sửa</a></td>
					<td><a
						href="javascript:xoaGioiThieu('${tt.masp }','${tt.chitiet }')">Xóa</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td><input type="text" name="gt"/></td>
				<td><textarea rows="20" cols="140" name="gt"></textarea></td>
				<td><input type="button" value="Add" id="btnAddGT"/></td>
			</tr>
		</table>
		<input type="button" value="Xóa những giới thiệu sản phẩm đã chọn"
			id="btnXoaSelectGT" />
	</form>
	<script type="text/javascript" src="../../JS/NhanVien/List-gioi-thieu.js"></script>
</body>
</html>