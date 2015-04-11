function checkForm() {
	var btnAddGT = document.getElementById("btnAddGT");
	btnAddGT.onclick = function() {
		var inp = document.getElementsByName("gt");
		for (var i = 0; i < inp.length; i++) {
			if (inp[i].value == "") {
				alert("Bạn chưa nhập đủ thông tin.");
				return;
			}
		}
		document.getElementById("formGioiThieu").submit();
	}
}

function xoaGioiThieu(masp, chitiet) {
	var conf = confirm("Bạn muốn xóa cấu hình\nMã sp: " + masp + "\nChi tiết: "
			+ chitiet);
	if (conf == true) {
		window.location = "Xoa-gioi-thieu?masp=" + masp;
	}
}

var check = 0;

function clickXoa() {
	var btnXoaSelectGT = document.getElementById("btnXoaSelectGT");
	btnXoaSelectGT.onclick = function() {
		var conf = confirm("Bạn có muốn xóa những giới thiệu sản phẩm đã chọn.");
		if (conf == true) {
			document.getElementById("formGioiThieu").action = "Xoa-select-gt";
			document.getElementById("formGioiThieu").submit();
		}
	}
	var btnSelectAllGT = document.getElementById("selectAllGT");
	btnSelectAllGT.onclick = function() {
		var select = document.getElementsByName("selectGT");
		if (check == 0) {
			for (var i = 0; i < select.length; i++) {
				select[i].checked = true;
			}
			check = 1;
		} else {
			for (var i = 0; i < select.length; i++) {
				select[i].checked = false;
			}
			check = 0;
		}
	}
}
checkForm();
clickXoa();