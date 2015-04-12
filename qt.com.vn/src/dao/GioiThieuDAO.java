package dao;

import java.util.List;

import model.GioiThieu;

public interface GioiThieuDAO {
	public void insertGioiThieu(GioiThieu gt);

	public void updateGioiThieu(GioiThieu gt, String masp);

	public void deleteGioiThieu(String masp);

	public GioiThieu getGioiThieu(String masp);

	public List<GioiThieu> getListGioiThieu();

	public void closeConnection();
}
