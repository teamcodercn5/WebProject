package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import config.IODatabase;
import model.Account;

public class AccountDAOImpl implements AccountDAO {
	private IODatabase io;

	public AccountDAOImpl() {
		io = new IODatabase();
	}

	@Override
	public void insertAccount(Account acc) {
		String sqlCommand = "insert into Account values(?,?,?,?,?,?,?,?,?,?)";
		int[] indexes = { 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 };
		io.executeUpdate(sqlCommand, acc.getAccount(), indexes);
	}

	@Override
	public void updateAccount(Account acc, String user) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteAccount(String user) {
		// TODO Auto-generated method stub

	}

	@Override
	public Account getAccount(String user) {
		String sqlCommand = "select * from Account where user='" + user + "'";
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			if (rs.next()) {
				Account acc = new Account(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8),
						rs.getString(9), rs.getString(10));
				return acc;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return null;
	}

	@Override
	public ArrayList<Account> getListAccount() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void closeConnection() {
		io.closeConnection();
	}

	@Override
	public boolean checkAccount(String user) {
		String sqlCommand = "select user from account where user='" + user
				+ "'";
		ResultSet rs = io.getResultSet(sqlCommand);
		try {
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return false;
	}
}
