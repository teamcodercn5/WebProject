package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class IODatabase {
	private Connection conn;
	private Statement st;
	private PreparedStatement ps;
	private ResultSet rs;

	public IODatabase() {
		String url = "jdbc:mysql://localhost:3306/dienthoaididong?characterEncoding=UTF-8";
		String user = "qt";
		String pass = "1234";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, pass);
			st = conn.createStatement();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public ResultSet getResultSet(String sqlCommand) {
		try {
			rs = st.executeQuery(sqlCommand);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return rs;
	}

	public void executeUpdate(String sqlCommand, String[] values, int[] indexes) {
		try {
			ps = conn.prepareStatement(sqlCommand);
			for (int i = 0; i < values.length; i++) {
				ps.setString(indexes[i], values[i]);
			}
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closeConnection() {
		try {
			conn.close();
			st.close();
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}