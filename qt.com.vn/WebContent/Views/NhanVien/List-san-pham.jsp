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
<title>Danh sách sản phẩm</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<h1>${sessionScope.thongbao }</h1>
	<%
		session.removeAttribute("thongbao");
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		ArrayList<SanPham> alsp = new ArrayList<SanPham>();
		alsp.addAll(spDAO.getListSanPham());
	%>
	<a href="Nhan-vien.jsp">Quay lại</a>
	<form action="Save-san-pham" method="post" id="formSanPham">
		<table align="center" border="1px solid" bordercolor="#cec6ce"
			style="border-collapse: collapse;">
			<tr>
				<td rowspan="2">STT</td>
				<td rowspan="2">Mã SP</td>
				<td colspan="5">Sản phẩm</td>
				<td rowspan="2"><input type="button" value="Select All"
					id="selectAllSP" /></td>
				<td colspan="2" rowspan="2"></td>
			</tr>
			<tr>
				<td>Tên sản phẩm</td>
				<td>Giá bán</td>
				<td>Bảo hành</td>
				<td>Phụ kiện</td>
				<td>Tình trạng</td>
			</tr>
			<c:forEach var="sp" items="<%=alsp%>" varStatus="i">
				<tr>
					<td>${i.index+1 }</td>
					<td>${sp.masp }</td>
					<td>${sp.tensp }</td>
					<td>${sp.gia }</td>
					<td>${sp.baohanh }</td>
					<td>${sp.phukien }</td>
					<td>${sp.tinhtrang }</td>
					<td><input type="checkbox" value="${sp.masp }" name="selectSP" /></td>
					<td><a href="Edit-san-pham.jsp?masp=${sp.masp }">Sửa</a></td>
					<td><a
						href="javascript:xoaSanPham('${sp.masp }','${sp.tensp }','${sp.gia }',
				'${sp.baohanh }','${sp.phukien }','${sp.tinhtrang }')">Xóa</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td></td>
				<td><input type="text" name="sp" /></td>
				<td><input type="text" name="sp" /></td>
				<td><input type="text" name="sp" /></td>
				<td><input type="text" name="sp" /></td>
				<td><input type="text" name="sp" /></td>
				<td><input type="text" name="sp" /></td>
				<td><input type="button" value="Add" id="btnAddSP" /></td>
				<td colspan="2"></td>
			</tr>
		</table>
	</form>
	<input type="button" value="Xóa những sản phẩm đã chọn"
		id="btnXoaSelectSP" />
	<script type="text/javascript" src="../../JS/NhanVien/List-san-pham.js"></script>
</body>
</html>