
<%@page import="model.SanPham"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.SanPhamDAOImpl"%>
<%@page import="dao.SanPhamDAO"%>
<%
	if (session.getAttribute("checkNV") == null) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
<title>Danh sách sản phẩm</title>
</head>
<body>
	<%
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		ArrayList<SanPham> alsp = new ArrayList<SanPham>();
		alsp.addAll(spDAO.getListSanPham());
	%>
	<h1>Danh sách sản phẩm</h1>
	<br>
	<a href="Nhap-lieu-san-pham.jsp">Nhập liệu sản phẩm mới</a>
	<br>
	<table align="center" border="1px solid" bordercolor="black"
		style="border-collapse: collapse;">
		<tr>
			<td>STT</td>
			<td>Mã SP</td>
			<td>Tên SP</td>
			<td>Giá</td>
			<td>Bảo hành</td>
			<td>Phụ kiện</td>
			<td>Tình trạng</td>
			<td><input type="button" value="Select All" /></td>
			<c:forEach var="sp" items="<%=alsp%>" varStatus="i">
				<tr>
					<td>${i.index+1 }</td>
					<td>${sp.masp }</td>
					<td>${sp.tensp }</td>
					<td>${sp.gia }</td>
					<td>${sp.baohanh }</td>
					<td>${sp.phukien }</td>
					<td>${sp.tinhtrang }</td>
					<td><input type="checkbox" value="${sp.masp }" name="select" /></td>
					<td><a href="Edit-san-pham.jsp?masp=${sp.masp }">Sửa</a></td>
					<td><a
						href="javascript:xoaSanPham('${sp.masp }','${sp.tensp }','${sp.gia }',
				'${sp.baohanh }','${sp.phukien }','${sp.tinhtrang }')">Xóa</a></td>
				</tr>
			</c:forEach>
		</tr>
	</table>
	<script type="text/javascript" src="../../JS/NhanVien/List-san-pham.js"></script>
	<br> ${sessionScope.thongbao }
	<%
		session.removeAttribute("thongbao");
	%>
	<br>
	<a href="Nhan-vien.jsp">Quay lại</a>
	<br>
	<a href="../Login/Logout">Đăng xuất</a>
</body>
</html>