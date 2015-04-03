<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../../CSS/Frame/Frame.css" />
</head>
<body>
	<div class="top">
		<div class="login">
			<a href="javascript:login()" id="Login">Đăng nhập</a><a
				href="javascript:register()" id="Register">Đăng ký</a><a
				href="javascript:user()" id="View-user">${sessionScope.user }</a> <a
				href="javascript:logout()" id="Logout">Đăng xuất</a>
		</div>
		<div class="search">
			<form action="" method="post" id="idf">
				<input value="" class="text_search" type="text" name="text_search"
					placeholder="Tìm kiếm theo tên hoặc mã sản phẩm...">
				<button class="btn_search"></button>
			</form>
			<div class="clr"></div>
		</div>
	</div>
	<div class="wrapper">
		<div class="banner"></div>
		<div id="menu">
			<ul class="menu">
				<li><a href="javascript:trangChu()">&nbsp&nbsp&nbspTRANG
						CHỦ</a></li>
				<li><a href="">&nbsp&nbsp&nbspĐIỆN THOẠI</a>
					<ul id="submenu">
						<li><a href="">Apple</a></li>
						<li><a href="">Samsung</a></li>
						<li><a href="">Sony</a></li>
						<li><a href="">HTC</a></li>
						<li><a href="">Blackberry</a></li>
						<li><a href="">LG</a></li>
						<li><a href="">SKY</a></li>
						<li><a href="">Motorola</a></li>
						<li><a href="">NOKIA</a></li>
					</ul></li>
				<li><a href="">&nbsp&nbsp&nbspMÁY TÍNH BẢNG</a>
					<ul id="submenu">
						<li><a href="">Apple</a></li>
						<li><a href="">Samsung</a></li>
						<li><a href="">Sony</a></li>
						<li><a href="">Asus</a></li>
						<li><a href="">Microsoft</a></li>
					</ul></li>
				<li><a href="">&nbsp&nbsp&nbspTIN KHUYẾN MÃI</a></li>
				<li><a href="">&nbsp&nbsp&nbspCARE.QT.COM.VN</a></li>
			</ul>
		</div>
		<div class="slideshow">
			<img name="slide" style="width: 980px; height: 392px;" id="slide">
			<div class="annimationSlideShow">
				<a href="javascript:changeImage(-1)" id="prev">Prev&nbsp&nbsp&nbsp</a>
				<a href="javascript:changeImage(1)" id="next"> Next</a>
			</div>
		</div>
		<div class="leftMenu">Nơi viết Div Left
			Menuuuuuuuuuuuuuuuuuuuuuuuuu</div>
	</div>
</body>
</html>