function checkForm() {
	var btnAddSP = document.getElementById("btnAddSP");
	btnAddSP.onclick = function() {
		var inp = document.getElementsByName("sp");
		for (var i = 0; i < inp.length; i++) {
			if (inp[i].value == "") {
				alert("Bạn chưa nhập đủ thông tin.");
				return;
			}
		}
		document.getElementById("formSanPham").submit();
	}
}

function xoaSanPham(masp, tensp, gia, baohanh, phukien, tinhtrang) {
	var conf = confirm("Bạn muốn xóa sản phẩm\nMã sp: " + masp
			+ "\nTên sản phẩm: " + tensp + "\nGiá: " + gia + "\nBảo hành: "
			+ baohanh + "\nPhụ kiện: " + phukien + "\nTình trạng: " + tinhtrang);
	if (conf == true) {
		window.location = "Xoa-san-pham?masp=" + masp;
	}
}
var check = 0;

function clickXoa() {
	var btnXoaSelectSP = document.getElementById("btnXoaSelectSP");
	btnXoaSelectSP.onclick = function() {
		var conf = confirm("Bạn có muốn xóa những sản phẩm đã chọn.");
		if (conf == true) {
			document.getElementById("formSanPham").action = "Xoa-select-sp";
			document.getElementById("formSanPham").submit();
		}
	}
	var btnSelectAllSP = document.getElementById("selectAllSP");
	btnSelectAllSP.onclick = function() {
		var select = document.getElementsByName("selectSP");
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