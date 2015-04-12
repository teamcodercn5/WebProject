package model;

public class NhanVien {
	private String user, pass, hoten, nghiepvu, cmnd, mucluong, email, sodt;

	public NhanVien(String user, String pass, String hoten, String nghiepvu,
			String cmnd, String mucluong, String email, String sodt) {
		super();
		this.user = user;
		this.pass = pass;
		this.hoten = hoten;
		this.nghiepvu = nghiepvu;
		this.cmnd = cmnd;
		this.mucluong = mucluong;
		this.email = email;
		this.sodt = sodt;
	}

	public NhanVien() {
		super();
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getNghiepvu() {
		return nghiepvu;
	}

	public void setNghiepvu(String nghiepvu) {
		this.nghiepvu = nghiepvu;
	}

	public String getCmnd() {
		return cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public String getMucluong() {
		return mucluong;
	}

	public void setMucluong(String mucluong) {
		this.mucluong = mucluong;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSodt() {
		return sodt;
	}

	public void setSodt(String sodt) {
		this.sodt = sodt;
	}
}