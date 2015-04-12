<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
				<li><div class="divmenu" id="divm1"
						onclick="javascript:trangChu()"></div></li>
				<li><div class="divmenu" id="divm2">
						<a href=""></a>
					</div>
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
				<li><div class="divmenu" id="divm3">
						<a href=""></a>
					</div>
					<ul id="submenu">
						<li><a href="">Apple</a></li>
						<li><a href="">Samsung</a></li>
						<li><a href="">Sony</a></li>
						<li><a href="">Asus</a></li>
						<li><a href="">Microsoft</a></li>
					</ul></li>
				<li><div class="divmenu" id="divm4">
						<a href=""></a>
					</div></li>
				<li><div class="divmenu" id="divm5">
						<a href=""></a>
					</div></li>
				<li><div class="divmenu" id="divm6">
						<a href=""></a>
					</div></li>
			</ul>
		</div>
		<div class="slideshow">
			<img name="slide" style="width: 980px; height: 392px;" id="slide">
			<div class="annimationSlideShow">
				<a href="javascript:changeImage(-1)" id="prev">Prev&nbsp&nbsp&nbsp</a>
				<a href="javascript:changeImage(1)" id="next"> Next</a>
			</div>
		</div>
		<div class="leftMenu">
			<div class="leftM">Hỗ trợ trực tuyến</div>
			<div class="leftM2">
				Hỗ trợ bán hàng<br> 0918.181.003<br> <br>Hotline bán
				hàng<br> 0918.181.003<br> <br>Tư vấn mua hàng<br>
				0969.535.134<br> <br>Hỗ trợ trả góp<br>1900.1019
			</div>
			<div class="leftM">Danh mục sản phẩm</div>
			<div class="leftM3">
				<ul class="lmenu">
					<li><a href="">Điện thoại</a>
						<hr color="#cec6ce">
						<ul id="lsubmenu">
							<li><a href="">Apple</a></li>
							<li><a href="">Samsung</a></li>
							<li><a href="">Sony</a></li>
							<li><a href="">HTC</a></li>
							<li><a href="">Blackberry</a></li>
							<li><a href="">LG</a></li>
							<li><a href="">SKY</a></li>
							<li><a href="">Motorola</a></li>
							<li><a href="">NOKIA</a></li>
						</ul>
						<hr color="#cec6ce"></li>
					<li><a href="">Máy tính bảng</a>
						<hr color="#cec6ce">
						<ul id="lsubmenu">
							<li><a href="">Apple</a></li>
							<li><a href="">Samsung</a></li>
							<li><a href="">Sony</a></li>
							<li><a href="">Asus</a></li>
							<li><a href="">Microsoft</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>