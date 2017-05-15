package com.xu.service.impl;

import com.xu.dao.UserLoginDao;
import com.xu.entity.Customer;
import com.xu.service.UserLoginService;

public class UserLoginServiceImpl implements UserLoginService {

	private UserLoginDao userLoginDao;

	public UserLoginDao getUserLoginDao() {
		return userLoginDao;
	}

	public void setUserLoginDao(UserLoginDao userLoginDao) {
		this.userLoginDao = userLoginDao;
	}

	@Override
	public Customer isLogin(String ad_account, String ad_pass) {
		// TODO Auto-generated method stub
		return userLoginDao.isExist(ad_account, ad_pass);
	}

}
