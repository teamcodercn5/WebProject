function checkForm() {
	var btnSave = document.getElementById("save");
	btnSave.onclick = function() {
		var inp = document.getElementsByTagName("input");
		for (var i = 0; i < 5; i++) {
			if (inp[i].value == "") {
				alert("Bạn chưa nhập đủ thông tin.");
				return;
			}
		}
		document.getElementById("formNhapLieu").submit();
	}
}

checkForm();