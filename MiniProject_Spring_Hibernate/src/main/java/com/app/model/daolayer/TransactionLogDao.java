package com.app.model.daolayer;

import java.util.*;

import com.app.model.entity.TransactionLog;
import com.app.model.entity.TxType;
public interface TransactionLogDao {

	public TransactionLog addTransactionLog(int accountId,String txInfo, Double amount, TxType txType);
	public List<TransactionLog> getAllTransactions();
	public List<TransactionLog> getAllTransactionLogsForAccount(int accountId);
}