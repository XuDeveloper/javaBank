package com.xu.service.impl;

import com.xu.dao.CloseAccountDao;
import com.xu.service.CloseAccountService;

public class CloseAccountServiceImpl implements CloseAccountService {

	private CloseAccountDao closeAccountDao;

	public CloseAccountDao getCloseAccountDao() {
		return closeAccountDao;
	}

	public void setCloseAccountDao(CloseAccountDao closeAccountDao) {
		this.closeAccountDao = closeAccountDao;
	}

	@Override
	public boolean close(String cardNum) {
		// TODO Auto-generated method stub
		return closeAccountDao.close(cardNum);
	}

}
