package model;

public class SanPham {
	private String masp, tensp, gia, baohanh, phukien, tinhtrang;

	public SanPham(String masp, String tensp, String gia, String baohanh,
			String phukien, String tinhtrang) {
		super();
		this.masp = masp;
		this.tensp = tensp;
		this.gia = gia;
		this.baohanh = baohanh;
		this.phukien = phukien;
		this.tinhtrang = tinhtrang;
	}

	public SanPham() {
		super();
	}

	public String getMasp() {
		return masp;
	}

	public void setMasp(String masp) {
		this.masp = masp;
	}

	public String getTensp() {
		return tensp;
	}

	public void setTensp(String tensp) {
		this.tensp = tensp;
	}

	public String getGia() {
		return gia;
	}

	public void setGia(String gia) {
		this.gia = gia;
	}

	public String getBaohanh() {
		return baohanh;
	}

	public void setBaohanh(String baohanh) {
		this.baohanh = baohanh;
	}

	public String getPhukien() {
		return phukien;
	}

	public void setPhukien(String phukien) {
		this.phukien = phukien;
	}

	public String getTinhtrang() {
		return tinhtrang;
	}

	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
}