function xoaNhanVien(user, hoten, nghiepvu, cmnd, mucluong, email, sodt) {
	var conf = confirm("Bạn muốn xóa nhân viên\nUser: " + user + "\nHọ tên: "
			+ hoten + "\nNghiệp vụ: " + nghiepvu + "\nCMND: " + cmnd
			+ "\nMức lương: " + mucluong + "\nEmail: " + email
			+ "\nSố điện thoại: " + sodt);
	if (conf == true) {
		window.location = "Xoa-nhan-vien?user=" + user;
	}
}

var check = 0;

function clickButton() {
	var btnXoaSelect = document.getElementById("btnXoaSelect");
	btnXoaSelect.onclick = function() {
		var conf = confirm("Bạn có muốn xóa những nhân viên đã chọn.");
		if (conf == true) {
			document.getElementById("formXoaSelect").submit();
		}
	}
	var btnSelectAll = document.getElementById("selectAll");
	btnSelectAll.onclick = function() {
		var select = document.getElementsByName("select");
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