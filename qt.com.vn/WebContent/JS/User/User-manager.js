function checkUpdate() {
	var hoten = document.getElementById("hoten").value;
	var email = document.getElementById("email").value;
	var diachi = document.getElementById("diachi").value;
	var ngaysinh = document.getElementById("ngaysinh").value;
	var sodt = document.getElementById("sodt").value;
	if (hoten == "" || email == "" || diachi == "" || ngaysinh == ""
			|| sodt == "") {
		alert("Thông tin Update bị lỗi.");
		return;
	}
	if (email.indexOf("@") < 0 || email.indexOf(".") < 0) {
		alert("Email sai định dạng");
		return;
	}
	for (var i = 0; i < sodt.length; i++) {
		if (sodt.charAt(i) > '9' || sodt.charAt(i) < '0') {
			alert("Số điện thoại sai định dạng.");
			return;
		}
	}
	document.getElementById("formUpdate").submit();
}