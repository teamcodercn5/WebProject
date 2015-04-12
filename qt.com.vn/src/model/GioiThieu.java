package model;

public class GioiThieu {
	String masp, chitiet;

	public GioiThieu(String masp, String chitiet) {
		super();
		this.masp = masp;
		this.chitiet = chitiet;
	}

	public GioiThieu() {
		super();
	}

	public String getMasp() {
		return masp;
	}

	public void setMasp(String masp) {
		this.masp = masp;
	}

	public String getChitiet() {
		return chitiet;
	}

	public void setChitiet(String chitiet) {
		this.chitiet = chitiet;
	}
}
