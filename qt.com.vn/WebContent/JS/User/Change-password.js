function checkChangePass() {
	var currentPass = document.getElementById("currentPass").value;
	var newPass1 = document.getElementById("newPass1").value;
	var newPass2 = document.getElementById("newPass2").value;
	if (currentPass == "" || newPass1 == "") {
		alert("Bạn chưa nhập đủ thông tin.");
		return;
	}
	if (newPass1 != newPass2) {
		alert("Mật khẩu nhập lại chưa chính xác.");
		return;
	}
	document.getElementById("formChangePass").submit();
}