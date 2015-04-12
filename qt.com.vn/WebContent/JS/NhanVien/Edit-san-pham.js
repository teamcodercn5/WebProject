function saveSanPham() {
	var btnSaveSP = document.getElementById("saveSanPham");
	btnSaveSP.onclick = function() {
		var inp = document.getElementsByTagName("sp");
		for (var i = 0; i < inp.length; i++) {
			if (inp[i].value == "") {
				alert("Bạn chưa nhập đủ thông tin.");
				return;
			}
		}
		document.getElementById("formNhapLieuSP").submit();
	}
}
saveSanPham();