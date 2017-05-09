package com.xu.service.impl;

import com.xu.dao.AdminNewSavingAccountDao;
import com.xu.entity.Result;
import com.xu.service.AdminNewSavingAccountService;

public class AdminNewSavingAccountServiceImpl implements AdminNewSavingAccountService {

	private AdminNewSavingAccountDao adminNewSavingAccountDao;
	
	public AdminNewSavingAccountDao getAdminNewSavingAccountDao() {
		return adminNewSavingAccountDao;
	}

	public void setAdminNewSavingAccountDao(AdminNewSavingAccountDao adminNewSavingAccountDao) {
		this.adminNewSavingAccountDao = adminNewSavingAccountDao;
	}

	@Override
	public Result createNewSavingAccount(String cu_id, String cu_name, String cu_PIN) {
		// TODO Auto-generated method stub
		return adminNewSavingAccountDao.create(cu_id, cu_name, cu_PIN);
	}

}
