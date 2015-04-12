package model;

public class CauHinh {
	private String masp, manhinh, cpu, ram, os, camerachinh, cameraphu, rom,
			sd, pin;

	public CauHinh(String masp, String manhinh, String cpu, String ram,
			String os, String camerachinh, String cameraphu, String rom,
			String sd, String pin) {
		super();
		this.masp = masp;
		this.manhinh = manhinh;
		this.cpu = cpu;
		this.ram = ram;
		this.os = os;
		this.camerachinh = camerachinh;
		this.cameraphu = cameraphu;
		this.rom = rom;
		this.sd = sd;
		this.pin = pin;
	}

	public CauHinh() {
		super();
	}

	public String getMasp() {
		return masp;
	}

	public void setMasp(String masp) {
		this.masp = masp;
	}

	public String getManhinh() {
		return manhinh;
	}

	public void setManhinh(String manhinh) {
		this.manhinh = manhinh;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public String getOs() {
		return os;
	}

	public void setOs(String os) {
		this.os = os;
	}

	public String getCamerachinh() {
		return camerachinh;
	}

	public void setCamerachinh(String camerachinh) {
		this.camerachinh = camerachinh;
	}

	public String getCameraphu() {
		return cameraphu;
	}

	public void setCameraphu(String cameraphu) {
		this.cameraphu = cameraphu;
	}

	public String getRom() {
		return rom;
	}

	public void setRom(String rom) {
		this.rom = rom;
	}

	public String getSd() {
		return sd;
	}

	public void setSd(String sd) {
		this.sd = sd;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}
}