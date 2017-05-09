package com.xu.service.impl;

import com.xu.dao.DepositDao;
import com.xu.service.DepositService;

public class DepositServiceImpl implements DepositService {
	
	private DepositDao depositDao;

	public DepositDao getDepositDao() {
		return depositDao;
	}

	public void setDepositDao(DepositDao depositDao) {
		this.depositDao = depositDao;
	}

	@Override
	public boolean deposit(String accountNum, Integer balance) {
		// TODO Auto-generated method stub
		return depositDao.deposit(accountNum, balance);
	}

}
