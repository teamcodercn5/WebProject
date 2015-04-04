package dao;

import java.util.List;

import model.NhanVien;

public interface NhanVienDAO {
	public void insertNhanVien(NhanVien nv);
	
	public void updateNhanVien(NhanVien nv, String manv);
	
	public void deleteNhanVien(String manv);
	
	public NhanVien getNhanVien(String manv);
	
	public List<NhanVien> getListNhanVien();
	
	public void closeConnection();
}
