function saveCauHinh() {
	var btnSaveCH = document.getElementById("saveCauHinh");
	btnSaveCH.onclick = function() {
		var inp = document.getElementsByName("ch");
		for (var i = 0; i < inp.length; i++) {
			if (inp[i].value == "") {
				alert("Bạn chưa nhập đủ thông tin.");
				return;
			}
		}
		document.getElementById("formNhapLieuCH").submit();
	}
}
saveCauHinh();