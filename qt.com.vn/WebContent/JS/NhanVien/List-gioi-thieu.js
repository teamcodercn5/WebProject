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

var check = 0;

function viewGT() {
	var btnViewGT = document.getElementById("btnViewGT");
	btnViewGT.onclick = function() {
		if (document.getElementById("getGT").value == "") {
			alert("Bạn chưa nhập mã sản phẩm");
			return;
		}
		window.location = "List-gioi-thieu.jsp?masp="
				+ document.getElementById("getGT").value;
	}
}
viewGT();
checkForm();