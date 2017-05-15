package com.xu.service.impl;

import com.xu.dao.ActivateDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.ActivateService;

public class ActivateServiceImpl implements ActivateService {

	private ActivateDao activateDao;

	public ActivateDao getActivateDao() {
		return activateDao;
	}

	public void setActivateDao(ActivateDao activateDao) {
		this.activateDao = activateDao;
	}

	@Override
	public Customer findByCode(String code) {
		// TODO Auto-generated method stub
		return activateDao.findByCode(code);
	}

	@Override
	public Result activate(Customer customer) {
		// TODO Auto-generated method stub
		return activateDao.activate(customer);
	}

}
