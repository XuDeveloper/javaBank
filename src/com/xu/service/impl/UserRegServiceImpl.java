package com.xu.service.impl;

import com.xu.dao.UserRegDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.UserRegService;
import com.xu.util.MailUtils;

public class UserRegServiceImpl implements UserRegService {

	private UserRegDao userRegDao;

	public UserRegDao getUserRegDao() {
		return userRegDao;
	}

	public void setUserRegDao(UserRegDao userRegDao) {
		this.userRegDao = userRegDao;
	}

	@Override
	public Result add(Customer customer) throws Exception {
		// TODO Auto-generated method stub
		Result result = new Result();
		if (userRegDao.add(customer).getStatus() == Result.SUCCESS) {
			MailUtils.sendMail(customer.getCu_email(), customer.getCode());
			result.setStatus(Result.SUCCESS);
			result.setResponse(customer);
			return result;
		}
		result.setStatus(Result.ERROR);
		result.setResponse("The account name exists");
		return result;
	}

}
