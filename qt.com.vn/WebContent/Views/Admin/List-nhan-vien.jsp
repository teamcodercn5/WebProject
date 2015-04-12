
<%
	if (!((String) session.getAttribute("user")).equals("admin")) {
		response.sendRedirect("../Out-server.jsp");
	}
%>
<%@page import="model.NhanVien"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.NhanVienDAOImpl"%>
<%@page import="dao.NhanVienDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý nhân viên</title>
<link rel="stylesheet" type="text/css"
	href="../../CSS/Admin/List-nhan-vien.css" />
<script type="text/javascript" src="../../JS/Admin/List-nhan-vien.js"></script>
</head>
<body>
	<h1>Danh sách nhân viên</h1>
	<br>
	<a href="New-nhan-vien.jsp">Thêm nhân viên mới</a>
	<br> ${sessionScope.thongbao }
	<%
		session.removeAttribute("thongbao");
	%>
	<br>
	<form action="Xoa-select" method="post" id="formXoaSelect">
		<table align="center" border="solid 1px" bordercolor="black"
			style="border-collapse: collapse;">
			<%
				NhanVienDAO nvDAO = new NhanVienDAOImpl();
				ArrayList<NhanVien> alnv = new ArrayList<NhanVien>();
				alnv.addAll(nvDAO.getListNhanVien());
			%>
			<tr>
				<td>STT</td>
				<td>User</td>
				<td>Pass</td>
				<td>Họ tên</td>
				<td>Nghiệp vụ</td>
				<td>CMND</td>
				<td>Mức lương</td>
				<td>Email</td>
				<td>Số điện thoại</td>
				<td><input type="button" value="Select All" id="selectAll"/></td>
			</tr>
			<c:forEach var="nv" items="<%=alnv%>" varStatus="i">
				<tr>
					<td>${i.index+1 }</td>
					<td>${nv.user }</td>
					<td>${nv.pass }</td>
					<td>${nv.hoten }</td>
					<td>${nv.nghiepvu }</td>
					<td>${nv.cmnd }</td>
					<td>${nv.mucluong }</td>
					<td>${nv.email }</td>
					<td>${nv.sodt }</td>
					<td><input type="checkbox" value="${nv.user }" name="select"/></td>
					<td><a href="Edit-nhan-vien.jsp?user=${nv.user }">Sửa</a></td>
					<td><a
						href="javascript:xoaNhanVien('${nv.user }','${nv.hoten }','${nv.nghiepvu }',
				'${nv.cmnd }','${nv.mucluong }','${nv.email }','${nv.sodt }')">Xóa</a></td>
				</tr>
			</c:forEach>
		</table>
		<br> <input type="button" value="Xóa những nhân viên đã chọn." id="btnXoaSelect"/>
	</form>
	<script type="text/javascript">clickButton()</script>
	<br>
	<br>
	<a href="../Login/Logout">Đăng xuất</a>
</body>
</html>