package model;

public class CauHinh {
	private String masp, manhinh, CPU, RAM, OS, camerachinh, cameraphu, ROM,
			SD, Pin;

	public CauHinh(String masp, String manhinh, String cPU, String rAM,
			String oS, String camerachinh, String cameraphu, String rOM,
			String sD, String pin) {
		super();
		this.masp = masp;
		this.manhinh = manhinh;
		CPU = cPU;
		RAM = rAM;
		OS = oS;
		this.camerachinh = camerachinh;
		this.cameraphu = cameraphu;
		ROM = rOM;
		SD = sD;
		Pin = pin;
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

	public String getCPU() {
		return CPU;
	}

	public void setCPU(String cPU) {
		CPU = cPU;
	}

	public String getRAM() {
		return RAM;
	}

	public void setRAM(String rAM) {
		RAM = rAM;
	}

	public String getOS() {
		return OS;
	}

	public void setOS(String oS) {
		OS = oS;
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

	public String getROM() {
		return ROM;
	}

	public void setROM(String rOM) {
		ROM = rOM;
	}

	public String getSD() {
		return SD;
	}

	public void setSD(String sD) {
		SD = sD;
	}

	public String getPin() {
		return Pin;
	}

	public void setPin(String pin) {
		Pin = pin;
	}
}