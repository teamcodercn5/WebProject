package dao;

import java.util.ArrayList;

import model.Account;

public interface AccountDAO {
	public void insertAccount(Account acc);
	
	public void updateAccount(Account acc, String user);
	
	public void deleteAccount(String user);
	
	public Account getAccount(String user);
	
	public ArrayList<Account> getListAccount();
	
	public void closeConnection();
	
	public boolean checkAccount(String user);
}