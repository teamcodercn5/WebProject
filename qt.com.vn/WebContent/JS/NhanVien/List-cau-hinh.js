function checkForm() {
	var btnAddCH = document.getElementById("btnAddCH");
	btnAddCH.onclick = function() {
		var inp = document.getElementsByName("ch");
		for (var i = 0; i < inp.length; i++) {
			if (inp[i].value == "") {
				alert("Bạn chưa nhập đủ thông tin.");
				return;
			}
		}
		document.getElementById("formCauHinh").submit();
	}
}

function xoaCauHinh(masp, manhinh, cpu, ram, os, camerachinh, cameraphu, rom,
		sd, pin) {
	var conf = confirm("Bạn muốn xóa cấu hình\nMã sp: " + masp + "\nMàn hình: "
			+ manhinh + "\nCPU: " + cpu + "\nRAM: " + ram + "\nOS: " + os
			+ "\nCamera chính: " + camerachinh + "\nCamera phụ: " + cameraphu
			+ "\nROM: " + rom + "\nSD: " + sd + "\nPin: " + pin);
	if (conf == true) {
		window.location = "Xoa-cau-hinh?masp=" + masp;
	}
}

var check = 0;

function clickXoa() {
	var btnXoaSelectCH = document.getElementById("btnXoaSelectCH");
	btnXoaSelectCH.onclick = function() {
		var conf = confirm("Bạn có muốn xóa những cấu hình đã chọn.");
		if (conf == true) {
			document.getElementById("formCauHinh").action = "Xoa-select-ch";
			document.getElementById("formCauHinh").submit();
		}
	}
	var btnSelectAllCH = document.getElementById("selectAllCH");
	btnSelectAllCH.onclick = function() {
		var select = document.getElementsByName("selectCH");
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