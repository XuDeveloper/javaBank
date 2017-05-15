package com.xu.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.ForgetPwdDao;
import com.xu.entity.Customer;

public class ForgetPwdDaoImpl extends HibernateDaoSupport implements ForgetPwdDao {

	@Override
	public Customer find(String cu_nickname, String cu_id, String cu_email) {
		// TODO Auto-generated method stub
		return null;
	}

}
