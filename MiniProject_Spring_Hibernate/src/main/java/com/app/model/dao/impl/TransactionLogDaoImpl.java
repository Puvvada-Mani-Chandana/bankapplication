package com.app.model.dao.impl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.model.daolayer.TransactionLogDao;
import com.app.model.entity.TransactionLog;
import com.app.model.entity.TxType;

@Repository
public class TransactionLogDaoImpl implements TransactionLogDao{

	private SessionFactory factory;
	
	@Autowired
	public TransactionLogDaoImpl(SessionFactory factory) {
		this.factory = factory;
	}
	
	private Session getSession() {
		return factory.getCurrentSession();
	}
	
	@Override
	public TransactionLog addTransactionLog(int accountId,String txInfo, Double amount, TxType txType) {
		TransactionLog log = new TransactionLog(txInfo, amount, txType);
		getSession().persist(log);
		return null;
	}

	@Override
	public List<TransactionLog> getAllTransactions() {
		
		return getSession().createQuery("from TransactionLog").list();
	}

	@Override
	public List<TransactionLog> getAllTransactionLogsForAccount(int accountId) {
		// TODO Auto-generated method stub
		return null;
	}

}
