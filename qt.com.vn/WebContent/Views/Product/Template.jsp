<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.*"%>
<%@page import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mua bán điện thoại di động</title>
<link rel="stylesheet" type="text/css" href="../../CSS/Frame/Top.css" />
<link rel="stylesheet" type="text/css" href="../../CSS/Frame/Footer.css" />
<link rel="stylesheet" type="text/css" href="../../CSS/Homepage.css" />
<link rel="stylesheet" type="text/css"
	href="../../CSS/Frame/Left-menu.css" />
<link rel="shortcut icon" href="../../Images/Frame/Icon.png"
	type="image/x-icon" />
<link rel="icon" href="../../Images/Frame/Icon.png" type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="../../CSS/User/User-manager.css" />
<link rel="stylesheet" type="text/css"
	href="../${sessionScope.cssuser }" />
<link rel="stylesheet" href="../../CSS/Product/Template.css" />
<link rel="stylesheet" href="" id="cssGT" />
</head>
<%@ include file="../Frame/Top.jsp"%>
<body>
	<%
		String masp = request.getParameter("masp");
		CauHinhDAO chDAO = new CauHinhDAOImpl();
		CauHinh ch = chDAO.getCauHinh(masp);
		SanPhamDAO spDAO = new SanPhamDAOImpl();
		SanPham sp = spDAO.getSanPham(masp);
		GioiThieuDAO gtDAO = new GioiThieuDAOImpl();
		GioiThieu tt = gtDAO.getGioiThieu(masp);
	%>
	<div class="imageProduct"
		style="background-image: url('../../Images/Product/<%=masp%>.jpg');"></div>
	<div class="product">
		<br>
		<h3>
			&nbsp<%=sp.getTensp()%></h3>
		<br>
		<hr>
		<div class="thongtin">
			<br>Giá sản phẩm<br> <br>Mã sản phẩm<br> <br>Phụ
			kiện<br> <br>Bảo hành<br> <br>Tình trạng
		</div>
		<div class="gia"><%=sp.getGia()%></div>
		<div class="sp" id="masp"><%=sp.getMasp()%></div>
		<div class="sp"><%=sp.getPhukien()%></div>
		<div class="sp"><%=sp.getBaohanh()%></div>
		<div class="sp"><%=sp.getTinhtrang()%></div>
		<div class="muahang">
			<br> <br> Số lượng: <input type="text" value="1" name="sl"
				style="width: 30px;" /> <br> <br>
			<div class="muangay">Mua ngay</div>
			<div class="muatragop">Mua trả góp</div>
		</div>
	</div>
	<div class="infoProduct">
		<div class="main">
			<ul>
				<li><div class="info">
						<a href="javascript:viewCH()">Cấu hình</a>
					</div></li>
				<li>
					<div class="info">
						<a href="javascript:viewGT()">Thông tin sản phẩm</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="displayCH">
		<table align="left"
			style="padding-left: 20px; border-collapse: collapse;">
			<tr>
				<td style="width: 100px;">Màn hình</td>
				<td style="width: 300px;"><%=ch.getManhinh()%></td>
			</tr>
			<tr>
				<td>CPU</td>
				<td><%=ch.getCpu()%></td>
			</tr>
			<tr>
				<td>RAM</td>
				<td><%=ch.getRam()%></td>
			</tr>
			<tr>
				<td>OS</td>
				<td><%=ch.getOs()%></td>
			</tr>
			<tr>
				<td>Camera chính</td>
				<td><%=ch.getCamerachinh()%></td>
			</tr>
			<tr>
				<td>Camera phụ</td>
				<td><%=ch.getCameraphu()%></td>
			</tr>
			<tr>
				<td>ROM</td>
				<td><%=ch.getRom()%></td>
			</tr>
			<tr>
				<td>SD</td>
				<td><%=ch.getSd()%></td>
			</tr>
			<tr>
				<td>Pin</td>
				<td><%=ch.getPin()%></td>
			</tr>
		</table>
	</div>
	<div class="displayGT">
		<%
			if (tt != null) {
				out.println(tt.getChitiet());
			}
		%>
	</div>
	<script type="text/javascript" src="../../JS/Product/Template.js"></script>
	<script type="text/javascript" src="../../JS/Frame/Top.js"></script>
	<script type="text/javascript" src="../../JS/User/User-manager.js"></script>
</body>
<%@ include file="../Frame/Footer.jsp"%>
</html>