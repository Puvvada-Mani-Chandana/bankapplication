package com.app.model.daolayer;

import java.util.*;

import com.app.model.entity.Account;
public interface AccountDao {	
	public List<Account> getAllAccounts();
	public Account updateAccount(Account account);
	public Account updateAccount(int id,Account account);
	public Account delAccount(int accountId);
	public Account getAccountById(int accountId);
	public Account addAccount(Account account);
}