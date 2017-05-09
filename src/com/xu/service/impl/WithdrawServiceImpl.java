package com.xu.service.impl;

import com.xu.dao.WithdrawDao;
import com.xu.entity.Result;
import com.xu.service.WithdrawService;

public class WithdrawServiceImpl implements WithdrawService {

	private WithdrawDao withdrawDao;

	public WithdrawDao getWithdrawDao() {
		return withdrawDao;
	}

	public void setWithdrawDao(WithdrawDao withdrawDao) {
		this.withdrawDao = withdrawDao;
	}

	@Override
	public Result withdraw(String accountNum, Integer balance) {
		// TODO Auto-generated method stub
		return withdrawDao.withdraw(accountNum, balance);
	}

}
