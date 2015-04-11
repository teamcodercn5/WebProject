function saveGioiThieu() {
	var btnSaveGT = document.getElementById("saveGioiThieu");
	btnSaveGT.onclick = function() {
		var inp = document.getElementsByTagName("gt");
		for (var i = 0; i < inp.length; i++) {
			if (inp[i].value == "") {
				alert("Bạn chưa nhập đủ thông tin.");
				return;
			}
		}
		document.getElementById("formNhapLieuGT").submit();
	}
}
saveGioiThieu();