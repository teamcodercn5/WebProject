package dao;

import java.util.List;

import model.CauHinh;

public interface CauHinhDAO {
	public void insertCauHinh(CauHinh ch);

	public void updateCauHinh(CauHinh ch, String masp);

	public void deleteCauHinh(String masp);

	public CauHinh getCauHinh(String masp);

	public List<CauHinh> getListCauHinh();

	public void closeConnection();
}
