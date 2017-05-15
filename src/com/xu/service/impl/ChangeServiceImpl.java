package com.xu.service.impl;
import com.xu.dao.AdminNewSavingAccountDao;
import com.xu.dao.ChangeDao;
import com.xu.entity.Result;
import com.xu.service.AdminNewSavingAccountService;
import com.xu.service.ChangeService;

public class ChangeServiceImpl implements ChangeService{
	private ChangeDao changeDao;
	
	public ChangeDao getChangeDao() {
		return changeDao;
	}

	public void setChangeDao(ChangeDao changeDao) {
		this.changeDao =changeDao;
	}

	@Override
	public Result changepin(String cu_id, String cardNum, String cu_PIN) {
		// TODO Auto-generated method stub
		return null;
	}
}
