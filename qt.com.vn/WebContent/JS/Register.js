function checkFormRegister() {
	var user = document.getElementById("user").value;
	var pass1 = document.getElementById("pass1").value;
	var pass2 = document.getElementById("pass2").value;
	var hoten = document.getElementById("hoten").value;
	var email = document.getElementById("email").value;
	var gioitinh = document.getElementsByName("gioitinh");
	var check = 0;
	for (var i = 0; i < gioitinh.length; i++) {
		if (gioitinh[i].checked) {
			gioitinh = gioitinh[i].value;
			check = 1;
		}
	}
	if (check == 0) {
		gioitinh = "";
	}
	var diachi = document.getElementById("diachi").value;
	var ngaysinh = document.getElementById("ngaysinh").value;
	var sodt = document.getElementById("sodt").value;
	var loaithe = document.getElementsByName("the");
	check = 0;
	for (var i = 0; i < loaithe.length; i++) {
		if (loaithe[i].checked) {
			loaithe = loaithe[i].value;
			check = 1;
		}
	}
	if (check == 0) {
		the = "";
	}
	var mathe = document.getElementById("mathe").value;
	if (user == "" || pass1 == "" || pass2 == "" || hoten == "" || email == ""
			|| gioitinh == "" || diachi == "" || ngaysinh == "" || sodt == ""
			|| loaithe == "" || mathe == "") {
		alert("Bạn chưa nhập đủ thông tin");
		return;
	}
	if (pass1 != pass2) {
		alert("Mật khẩu nhập lại không khớp.");
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
	for (var i = 0; i < mathe.length; i++) {
		if (mathe.charAt(i) > '9' || mathe.charAt(i) < '0') {
			alert("Mã thẻ sai định dạng.");
			return;
		}
	}
	document.getElementById("formRegister").submit();
}