function xoaSanPham(masp, tensp, gia, baohanh, phukien, tinhtrang) {
	var conf = confirm("Bạn muốn xóa sản phẩm\nMã sp: " + masp
			+ "\nTên sản phẩm: " + tensp + "\nGiá: " + gia + "\nBảo hành: "
			+ baohanh + "\nPhụ kiện: " + phukien + "\nTình trạng: " + tinhtrang);
	if (conf == true) {
		window.location = "Xoa-san-pham?masp=" + masp;
	}
}