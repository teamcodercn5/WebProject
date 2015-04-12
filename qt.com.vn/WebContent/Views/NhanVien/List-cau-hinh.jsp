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
<title>Danh sách cấu hình</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<h1>${sessionScope.thongbao }</h1>
	<%
		session.removeAttribute("thongbao");
		CauHinhDAO chDAO = new CauHinhDAOImpl();
		ArrayList<CauHinh> alch = new ArrayList<CauHinh>();
		alch.addAll(chDAO.getListCauHinh());
	%>
	<a href="Nhan-vien.jsp">Quay lại</a>
	<form action="Save-cau-hinh" method="post" id="formCauHinh">
		<table align="center" border="1px solid" bordercolor="#cec6ce"
			style="border-collapse: collapse;">
			<tr>
				<td rowspan="2">STT</td>
				<td rowspan="2">Mã SP</td>
				<td colspan="9">Cấu hình</td>
				<td rowspan="2"><input type="button" value="Select All"
					id="selectAllCH" /></td>
				<td colspan="2" rowspan="2"></td>
			</tr>
			<tr>
				<td>Màn hình</td>
				<td>CPU</td>
				<td>RAM</td>
				<td>OS</td>
				<td>Camera chính</td>
				<td>Camera phụ</td>
				<td>ROM</td>
				<td>SD</td>
				<td>Pin</td>
			</tr>
			<c:forEach var="ch" items="<%=alch%>" varStatus="i">
				<tr>
					<td>${i.index+1 }</td>
					<td>${ch.masp }</td>
					<td>${ch.manhinh }</td>
					<td>${ch.cpu }</td>
					<td>${ch.ram }</td>
					<td>${ch.os }</td>
					<td>${ch.camerachinh }</td>
					<td>${ch.cameraphu }</td>
					<td>${ch.rom }</td>
					<td>${ch.sd }</td>
					<td>${ch.pin }</td>
					<td><input type="checkbox" value="${ch.masp }" name="selectCH" /></td>
					<td><a href="Edit-cau-hinh.jsp?masp=${ch.masp }">Sửa</a></td>
					<td><a
						href="javascript:xoaCauHinh('${ch.masp }','${ch.manhinh }','${ch.cpu }','${ch.ram }',
							'${ch.os }','${ch.camerachinh }','${ch.cameraphu }','${ch.rom }',
							'${ch.sd }','${ch.pin }')">Xóa</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="text" name="ch" /></td>
				<td><input type="button" value="Add" id="btnAddCH" /></td>
				<td colspan="2"></td>
			</tr>
		</table>
		<input type="button" value="Xóa những cấu hình đã chọn"
			id="btnXoaSelectCH" />
	</form>
	<script type="text/javascript" src="../../JS/NhanVien/List-cau-hinh.js"></script>
</body>
</html>