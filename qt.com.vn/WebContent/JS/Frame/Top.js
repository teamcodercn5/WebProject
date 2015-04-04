var path;
function login() {
	path = window.location.pathname.split("/");
	var loginWindow = window
			.open(
					path[0] + "/" + path[1] + "/Views/Login/Login.jsp",
					"_blank",
					"toolbar=yes, scrollbars=yes, resizable=yes, top=300, left=300, width=400, height=300");
	loginWindow.onunload = function() {
		window.location = window.location.pathname;
	}
}

function logout() {
	path = window.location.pathname.split("/");
	window.location = path[0] + "/" + path[1] + "/Views/Login/Logout";
}

function register() {
	path = window.location.pathname.split("/");
	window.location = path[0] + "/" + path[1] + "/Views/Register.jsp";
}

function trangChu() {
	path = window.location.pathname.split("/");
	window.location = path[0] + "/" + path[1] + "/Views/Homepage.jsp";
}

function user() {
	path = window.location.pathname.split("/");
	window.location = path[0] + "/" + path[1] + "/Views/Redirect-user";
}
var img1 = new Image();
var img2 = new Image();
var img3 = new Image();
var img4 = new Image();
var img5 = new Image();
var img6 = new Image();
var img7 = new Image();
var currentimage = 1;
var slideShow;
function changeImage(change) {
	clearTimeout(slideShow);
	currentimage += change;
	if (currentimage == 8) {
		currentimage = 1;
	}
	if (currentimage == 0) {
		currentimage = 7;
	}
	document.images.slide.src = eval("img" + currentimage + ".src");
	slideShow = setInterval(function() {
		autoRunSlideShow()
	}, 3000);
}

function autoRunSlideShow() {
	currentimage += 1;
	if (currentimage == 8) {
		currentimage = 1;
	}
	document.images.slide.src = eval("img" + currentimage + ".src");
}

function getSrcImg() {
	path = window.location.pathname.split("/");
	var index = path.length - 3;
	var src = "";
	for (var i = 0; i < index; i++) {
		src = src + "../";
	}
	src = src + "Images/Frame/";
	img1.src = src + "1.png";
	img2.src = src + "2.png";
	img3.src = src + "3.png";
	img4.src = src + "4.png";
	img5.src = src + "5.png";
	img6.src = src + "6.png";
	img7.src = src + "7.png";
}

function clickSlideShow() {
	getSrcImg();
	document.images.slide.src = eval("img" + currentimage + ".src");
	slideShow = setInterval(function() {
		autoRunSlideShow()
	}, 3000);
	var btnNext = document.getElementById("next");
	var btnPrev = document.getElementById("prev");
}
clickSlideShow();