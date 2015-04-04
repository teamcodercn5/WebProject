package dao;

import java.util.List;

import model.SanPham;

public interface SanPhamDAO {
	public void insertSanPham(SanPham sp);
	
	public void updateSanPham(SanPham sp,String masp);
	
	public void deleteSanPham(String masp);
	
	public SanPham getSanPham(String masp);
	
	public List<SanPham> getListSanPham();
	
	public void closeConnection();
}
