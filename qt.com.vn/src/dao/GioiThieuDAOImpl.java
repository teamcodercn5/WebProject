package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.GioiThieu;
import config.IODatabase;

public class GioiThieuDAOImpl implements GioiThieuDAO {
	private IODatabase io;

	public GioiThieuDAOImpl() {
		super();
		this.io = new IODatabase();
	}

	@Override
	public void insertGioiThieu(GioiThieu gt) {
		String sqlCommand = "insert into GioiThieu values(?,?)";
		String values[] = { gt.getMasp(), gt.getChitiet() };
		int[] indexes = { 1, 2 };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public void updateGioiThieu(GioiThieu gt, String masp) {
		String sqlCommand = "update GioiThieu set masp=?, chitiet=? where masp=?";
		String values[] = { gt.getMasp(), gt.getChitiet(), masp };
		int[] indexes = { 1, 2, 3 };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public void deleteGioiThieu(String masp) {
		String sqlCommand = "delete from GioiThieu where masp=?";
		String values[] = { masp };
		int[] indexes = { 1 };
		io.executeUpdate(sqlCommand, values, indexes);
	}

	@Override
	public GioiThieu getGioiThieu(String masp) {
		GioiThieu gt = new GioiThieu();
		String sqlCommand = "select * from GioiThieu where masp='" + masp + "'";
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			if (rs.next()) {
				gt.setMasp(rs.getString(1));
				gt.setChitiet(rs.getString(2));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return gt;
	}

	@Override
	public List<GioiThieu> getListGioiThieu() {
		String sqlCommand = "select * from GioiThieu";
		ResultSet rs = io.getResultSet(sqlCommand);
		List<GioiThieu> dsgt = new ArrayList<GioiThieu>();
		try {
			while (rs.next()) {
				dsgt.add(new GioiThieu(rs.getString(1), rs.getString(2)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dsgt;
	}

	@Override
	public void closeConnection() {
		io.closeConnection();
	}
}
