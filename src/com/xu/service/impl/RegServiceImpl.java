package com.xu.service.impl;

import com.xu.dao.RegDao;
import com.xu.entity.AdminUser;
import com.xu.entity.Result;
import com.xu.service.RegService;

public class RegServiceImpl implements RegService {
	private RegDao regDao;

	public RegDao getRegDao() {
		return regDao;
	}

	public void setRegDao(RegDao regDao) {
		this.regDao = regDao;
	}

	@Override
	public Result add(AdminUser user) {
		return regDao.add(user);
	}

}
