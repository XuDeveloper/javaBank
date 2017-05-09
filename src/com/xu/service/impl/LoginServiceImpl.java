package com.xu.service.impl;

import com.xu.dao.LoginDao;
import com.xu.entity.AdminUser;
import com.xu.service.LoginService;

public class LoginServiceImpl implements LoginService {
	
	private LoginDao loginDao;

	public LoginDao getLoginDao() {
		return loginDao;
	}

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	@Override
	public AdminUser isLogin(String ad_account, String ad_pass) {
		return loginDao.isExist(ad_account, ad_pass);
	}

}
