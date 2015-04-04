function checkEdit() {
	var btnSave = document.getElementById("save");
	btnSave.onclick = function() {
		var inp = document.getElementsByTagName("input");
		for (var i = 0; i < 7; i++) {
			if (inp[i].value == "") {
				alert("Bạn chưa nhập đầy đủ thông tin.");
				return;
			}
		}
		document.getElementById("formEdit").submit();
	}
}
checkEdit();