package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.UserRegDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;

public class UserRegDaoImpl extends HibernateDaoSupport implements UserRegDao {

	@Override
	public Result add(Customer customer) {
		// TODO Auto-generated method stub
		Result result = new Result();
		try {
			getHibernateTemplate().save(customer);
			result.setStatus(Result.SUCCESS);
			result.setResponse(customer);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			result.setStatus(Result.ERROR);
			result.setResponse("the account name exists");
			return result;
		}
	}

}
