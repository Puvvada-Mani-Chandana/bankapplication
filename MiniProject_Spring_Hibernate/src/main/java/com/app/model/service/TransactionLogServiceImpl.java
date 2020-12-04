package com.app.model.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.model.daolayer.TransactionLogDao;
import com.app.model.entity.TransactionLog;
import com.app.model.entity.TxType;

@Service
@Transactional
public class TransactionLogServiceImpl implements TransactionLogService{

	private TransactionLogDao txLogDao;
	
	@Autowired
	public TransactionLogServiceImpl(TransactionLogDao txLogDao) {
		this.txLogDao = txLogDao;
	}

	@Override
	public TransactionLog addTransactionLog(int accountId,String txInfo, Double amount, TxType txType) {
		
		return txLogDao.addTransactionLog(accountId,txInfo,amount,txType);
	}

	@Override
	public List<TransactionLog> getAllTransactions() {
		return txLogDao.getAllTransactions();
	}

	@Override
	public List<TransactionLog> getAllTransactionLogsForAccount(int accountId) {
		return null;
	}
	
}
