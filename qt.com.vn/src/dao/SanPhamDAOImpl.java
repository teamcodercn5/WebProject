package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.SanPham;
import config.IODatabase;

public class SanPhamDAOImpl implements SanPhamDAO {
	private IODatabase io;

	public SanPhamDAOImpl() {
		super();
		this.io = new IODatabase();
	}

	@Override
	public void insertSanPham(SanPham sp) {
		String sqlCommand = "insert into sanpham values(?,?,?,?,?,?)";
		int[] indexes = { 1, 2, 3, 4, 5, 6 };
		String[] values = { sp.getMasp(), sp.getTensp(), sp.getGia(),
				sp.getBaohanh(), sp.getPhukien(), sp.getTinhtrang() };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public void updateSanPham(SanPham sp, String masp) {
		String sqlCommand = "update sanpham set masp=?,tensp=?,gia=?,baohanh=?,phukien=?,tinhtrang=? where masp=?";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7 };
		String[] values = { sp.getMasp(), sp.getTensp(), sp.getGia(),
				sp.getBaohanh(), sp.getPhukien(), sp.getTinhtrang(), masp };
		io.executeUpdate(sqlCommand, values, indexes);

	}

	@Override
	public void deleteSanPham(String masp) {
		String sqlCommand = "delete from sanpham where masp=?";
		int[] indexes = { 1 };
		String[] values = { masp };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public SanPham getSanPham(String masp) {
		String sqlCommand = "select * from sanpham where masp='" + masp + "'";
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			if (rs.next()) {
				return new SanPham(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<SanPham> getListSanPham() {
		List<SanPham> listSP = new ArrayList<SanPham>();
		String sqlCommand = "select * from sanpham";
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			while (rs.next()) {
				listSP.add(new SanPham(rs.getString(1), rs.getString(2), rs
						.getString(3), rs.getString(4), rs.getString(5), rs
						.getString(6)));
			}
			return listSP;
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