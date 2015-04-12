package dao;

import java.util.List;

import model.NhanVien;

public interface NhanVienDAO {
	public void insertNhanVien(NhanVien nv);
	
	public void updateNhanVien(NhanVien nv, String user);
	
	public void deleteNhanVien(String user);
	
	public NhanVien getNhanVien(String user);
	
	public List<NhanVien> getListNhanVien();
	
	public void closeConnection();
}
