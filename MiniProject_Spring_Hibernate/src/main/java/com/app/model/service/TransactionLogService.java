package com.app.model.service;

import java.util.List;

import com.app.model.daolayer.TransactionLogDao;
import com.app.model.entity.TransactionLog;
import com.app.model.entity.TxType;

public interface TransactionLogService{
	public TransactionLog addTransactionLog(int accountId,String txInfo, Double amount, TxType txType);
	public List<TransactionLog> getAllTransactions();
	public List<TransactionLog> getAllTransactionLogsForAccount(int accountId);
}