<%@page import="dao.SanPhamDAOImpl"%>
<%@page import="dao.SanPhamDAO"%>
<%@page import="model.SanPham"%>
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
<title>Trang sửa sản phẩm</title>
<link rel="stylesheet" href="../../CSS/NhanVien/Nhan-vien.css"
	type="text/css" />
</head>
<body>
	<h1>Sửa sản phẩm</h1>
	<%
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		SanPham sp = spDAO.getSanPham(request.getParameter("masp"));
	%>
	<br>
	<form action="Edit-san-pham?masp=<%=sp.getMasp()%>" method="post"
		id="formNhapLieuSP">
		<table align="center" border="1px solid" bordercolor="black"
			style="border-collapse: collapse;">
			<tr>
				<td>Mã sp:</td>
				<td><%=sp.getMasp()%></td>
			</tr>
			<tr>
				<td>Tên sp:</td>
				<td><input type="text" value="<%=sp.getTensp()%>" name="sp" /></td>
			</tr>
			<tr>
				<td>Giá:</td>
				<td><input type="text" value="<%=sp.getGia()%>" name="sp" /></td>
			</tr>
			<tr>
				<td>Bảo hành:</td>
				<td><input type="text" value="<%=sp.getBaohanh()%>" name="sp" /></td>
			</tr>
			<tr>
				<td>Phụ kiện:</td>
				<td><input type="text" value="<%=sp.getPhukien()%>" name="sp" /></td>
			</tr>
			<tr>
				<td>Tình trạng:</td>
				<td><input type="text" value="<%=sp.getTinhtrang()%>" name="sp" /></td>
			</tr>
		</table>
		<input type="button" value="Lưu" id="saveSanPham" /> <input
			type="submit" value="Hủy bỏ"
			onclick="form.action='List-san-pham.jsp', method='post'" />
	</form>
	<script type="text/javascript" src="../../JS/NhanVien/Edit-san-pham.js"></script>
</body>
</html>