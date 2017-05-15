package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.UserRegDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.util.Md5Utils;

public class UserRegDaoImpl extends HibernateDaoSupport implements UserRegDao {

	@Override
	public Result add(Customer customer) {
		// TODO Auto-generated method stub
		Result result = new Result();
		try {
			getHibernateTemplate().update(customer);
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

	@Override
	public Customer findById(String cu_id) {
		// TODO Auto-generated method stub
		String hql = "from Customer c where c.cu_id=?";
		List<Customer> list = (List<Customer>) getHibernateTemplate().find(hql,
				new String[] { cu_id });
		if (list.size() != 1) {
			return null;
		}
		return list.get(0);
	}

}
