<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mua bán điện thoại di động</title>
<link rel="stylesheet" type="text/css" href="../CSS/Frame/Top.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Frame/Footer.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Homepage.css" />
<link rel="stylesheet" type="text/css" href="${sessionScope.cssuser }" />
<link rel="shortcut icon" href="../Images/Frame/Icon.png"
	type="image/x-icon" />
<link rel="icon" href="../Images/Frame/Icon.png" type="image/x-icon" />
</head>
<%@ include file="Frame/Top.jsp"%>
<body>
	<div class="main">
		<div class="main1">
			<div class="menuMain1">
				<ul>
					<li><div>
							<button class="btn_new"></button>
							<a href="#">Sản phẩm mới</a>
						</div></li>
					<li>
						<div>
							<button class="btn_hot"></button>
							<a href="#">Sản phẩm xem nhiều</a>
						</div>
					</li>
				</ul>
				<div class="viewAll">
					<a href="#">Xem tất cả...</a>
				</div>
			</div>
			<div class="productMain1">
			</div>
		</div>
	</div>
</body>
<%@ include file="Frame/Footer.jsp"%>
<script type="text/javascript" src="../JS/Frame/Top.js"></script>
<%
	session.setAttribute("currentUrl", request.getRequestURL()
			.toString());
%>
</html>