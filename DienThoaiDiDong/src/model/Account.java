package model;

public class Account {
	private String user, pass, hoten, email, gioitinh, diachi, ngaysinh, sodt,
			loaithe, mathe;

	public Account(String user, String pass, String hoten, String email,
			String gioitinh, String diachi, String ngaysinh, String sodt,
			String loaithe, String mathe) {
		super();
		this.user = user;
		this.pass = pass;
		this.hoten = hoten;
		this.email = email;
		this.gioitinh = gioitinh;
		this.diachi = diachi;
		this.ngaysinh = ngaysinh;
		this.sodt = sodt;
		this.loaithe = loaithe;
		this.mathe = mathe;
	}

	public Account() {
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(String ngaysinh) {
		this.ngaysinh = ngaysinh;
	}

	public String getSodt() {
		return sodt;
	}

	public void setSodt(String sodt) {
		this.sodt = sodt;
	}

	public String getLoaithe() {
		return loaithe;
	}

	public void setLoaithe(String loaithe) {
		this.loaithe = loaithe;
	}

	public String getMathe() {
		return mathe;
	}

	public void setMathe(String mathe) {
		this.mathe = mathe;
	}

	public String[] getAccount() {
		String[] temp = { user, pass, hoten, email, gioitinh, diachi, ngaysinh,
				sodt, loaithe, mathe };
		return temp;
	}

	public void setAccount(String[] acc) {
		user = acc[0];
		pass = acc[1];
		hoten = acc[2];
		email = acc[3];
		gioitinh = acc[4];
		diachi = acc[5];
		ngaysinh = acc[6];
		sodt = acc[7];
		loaithe = acc[8];
		mathe = acc[9];
	}
}