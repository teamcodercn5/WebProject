package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.NhanVien;
import config.IODatabase;

public class NhanVienDAOImpl implements NhanVienDAO {
	private IODatabase io;

	public NhanVienDAOImpl() {
		super();
		this.io = new IODatabase();
	}

	@Override
	public void insertNhanVien(NhanVien nv) {
		String sqlCommand = "insert into nhanvien values(?,?,?,?,?,?,?,?)";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8 };
		String values[] = { nv.getUser(), nv.getPass(), nv.getHoten(),
				nv.getNghiepvu(), nv.getCmnd(), nv.getMucluong(),
				nv.getEmail(), nv.getSodt() };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public void updateNhanVien(NhanVien nv, String user) {
		String sqlCommand = "update nhanvien set user=?,password=?,hoten=?,nghiepvu=?,cmnd=?,mucluong=?,email=?,sodt=? where user=?";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
		String values[] = { nv.getUser(), nv.getPass(), nv.getHoten(),
				nv.getNghiepvu(), nv.getCmnd(), nv.getMucluong(),
				nv.getEmail(), nv.getSodt(), user };
		io.executeUpdate(sqlCommand, values, indexes);

	}

	@Override
	public void deleteNhanVien(String user) {
		String sqlCommand = "delete from nhanvien where user=?";
		int[] indexes = { 1 };
		String[] values = { user };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public NhanVien getNhanVien(String user) {
		String sqlCommand = "select * from nhanvien where user='" + user + "'";
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			if (rs.next()) {
				return new NhanVien(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<NhanVien> getListNhanVien() {
		String sqlCommand = "select * from nhanvien";
		ResultSet rs = io.getResultSet(sqlCommand);
		List<NhanVien> listNV = new ArrayList<NhanVien>();
		try {
			while (rs.next()) {
				listNV.add(new NhanVien(rs.getString(1), rs.getString(2), rs
						.getString(3), rs.getString(4), rs.getString(5), rs
						.getString(6), rs.getString(7), rs.getString(8)));
			}
			return listNV;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void closeConnection() {
		io.closeConnection();
	}
}
