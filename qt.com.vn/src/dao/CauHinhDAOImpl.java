package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.CauHinh;
import config.IODatabase;

public class CauHinhDAOImpl implements CauHinhDAO {
	private IODatabase io;

	public CauHinhDAOImpl() {
		super();
		this.io = new IODatabase();
	}

	@Override
	public void insertCauHinh(CauHinh ch) {
		String sqlCommand = "insert into cauhinh values(?,?,?,?,?,?,?,?,?,?)";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
		String[] values = { ch.getMasp(), ch.getManhinh(), ch.getCPU(),
				ch.getRAM(), ch.getOS(), ch.getCamerachinh(),
				ch.getCameraphu(), ch.getROM(), ch.getSD(), ch.getPin() };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public void updateCauHinh(CauHinh ch, String masp) {
		String sqlCommand = "update cauhinh set masp=?,manhinh=?,cpu=?,RAM=?,OS=?,camerachinh=?,cameraphu=?,ROM=?,SD=?,Pin=? where masp=?";
		int[] indexes = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 };
		String[] values = { ch.getMasp(), ch.getManhinh(), ch.getCPU(),
				ch.getRAM(), ch.getOS(), ch.getCamerachinh(),
				ch.getCameraphu(), ch.getROM(), ch.getSD(), ch.getPin(), masp };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public void deleteCauHinh(String masp) {
		String sqlCommand = "delete from cauhinh where masp=?";
		int[] indexes = { 1 };
		String values[] = { masp };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public CauHinh getCauHinh(String masp) {
		String sqlCommand = "select * from cauhinh where masp='" + masp + "'";
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			if (rs.next()) {
				return new CauHinh(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8),
						rs.getString(9), rs.getString(10));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<CauHinh> getListCauHinh() {
		List<CauHinh> listCH = new ArrayList<CauHinh>();
		String sqlCommand = "select * from cauhinh";
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			while (rs.next()) {
				listCH.add(new CauHinh(rs.getString(1), rs.getString(2), rs
						.getString(3), rs.getString(4), rs.getString(5), rs
						.getString(6), rs.getString(7), rs.getString(8), rs
						.getString(9), rs.getString(10)));
			}
			return listCH;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void closeConnection() {
		io.closeConnection();
	}
}