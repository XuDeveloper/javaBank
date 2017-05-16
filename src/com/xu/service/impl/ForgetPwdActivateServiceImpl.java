package com.xu.service.impl;

import com.xu.dao.ForgetPwdActivateDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.ForgetPwdActivateService;

public class ForgetPwdActivateServiceImpl implements ForgetPwdActivateService {

	private ForgetPwdActivateDao forgetPwdActivateDao;

	public ForgetPwdActivateDao getForgetPwdActivateDao() {
		return forgetPwdActivateDao;
	}

	public void setForgetPwdActivateDao(ForgetPwdActivateDao forgetPwdActivateDao) {
		this.forgetPwdActivateDao = forgetPwdActivateDao;
	}

	@Override
	public Customer findByCode(String code) {
		// TODO Auto-generated method stub
		return forgetPwdActivateDao.findByCode(code);
	}

}
