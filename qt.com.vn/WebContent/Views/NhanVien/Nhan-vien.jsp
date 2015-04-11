
<%
	if (session.getAttribute("checkNV") == null) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@page import="model.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang nhân viên</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<%
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		ArrayList<SanPham> alsp = new ArrayList<SanPham>();
		alsp.addAll(spDAO.getListSanPham());
		CauHinhDAO chDAO = new CauHinhDAOImpl();
		ArrayList<CauHinh> alch = new ArrayList<CauHinh>();
		alch.addAll(chDAO.getListCauHinh());
	%>
	<a href="Nhan-vien-information.jsp">Xem thông tin cá nhân và thay
		đổi mật khẩu</a>
	<br>
	<br>
	<div class="sp">
		<form action="Save-san-pham" method="post" id="formCauHinh">
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
						<td><input type="checkbox" value="${sp.masp }"
							name="selectSP"/></td>
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
					<td><input type="button" value="Add" id="btnAdd" /></td>
					<td colspan="2"></td>
				</tr>
			</table>
		</form>
		<input type="button" value="Xóa những sản phẩm đã chọn"
			id="btnXoaSelectSP" /> <br> ${sessionScope.thongbao }
		<%
			session.removeAttribute("thongbao");
		%>
	</div>
	<script type="text/javascript" src="../../JS/NhanVien/San-pham.js"></script>
	<br>
	<a href="Nhan-vien.jsp">Quay lại</a>
	<br>
	<a href="../Login/Logout">Đăng xuất</a>
</body>
</html>