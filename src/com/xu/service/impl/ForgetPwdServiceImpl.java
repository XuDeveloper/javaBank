package com.xu.service.impl;

import com.xu.dao.ForgetPwdDao;
import com.xu.entity.Customer;
import com.xu.service.ForgetPwdService;
import com.xu.util.MailUtils;

public class ForgetPwdServiceImpl implements ForgetPwdService {

	private ForgetPwdDao forgetPwdDao;

	public ForgetPwdDao getForgetPwdDao() {
		return forgetPwdDao;
	}

	public void setForgetPwdDao(ForgetPwdDao forgetPwdDao) {
		this.forgetPwdDao = forgetPwdDao;
	}

	@Override
	public Customer find(String cu_nickname, String cu_id, String cu_email) {
		// TODO Auto-generated method stub
		Customer customer = forgetPwdDao.find(cu_nickname, cu_id, cu_email);
		if (customer == null) {
			return null;
		}
		try {
			MailUtils.sendForgetPwdMail(cu_email, customer.getCode());
			return customer;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
	}

}
