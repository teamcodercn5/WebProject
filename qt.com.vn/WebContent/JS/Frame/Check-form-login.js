function checkFormLogin() {
	var user = document.getElementById("user").value;
	var pass = document.getElementById("pass").value;
	if (user == "" || pass == "") {
		alert("Bạn chưa nhập tài khoản hoặc mật khẩu!");
	} else {
		document.getElementById("formLogin").submit();
	}
}
