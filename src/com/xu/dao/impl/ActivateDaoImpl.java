package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.ActivateDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.util.Md5Utils;

public class ActivateDaoImpl extends HibernateDaoSupport implements ActivateDao {

	@Override
	public Customer findByCode(String code) {
		// TODO Auto-generated method stub
		String hql = "from Customer c where c.code=?";
		List<Customer> list = (List<Customer>) getHibernateTemplate().find(hql,
				new String[] { code });
		if (list.size() != 1) {
			return null;
		}
		return list.get(0);
	}

	@Override
	public Result activate(Customer customer) {
		// TODO Auto-generated method stub
		Result result = new Result();
		customer.setCode("");
		customer.setStatus(1);
		customer.setAccountStatus("Normal");
		try {
			getHibernateTemplate().update(customer);
			result.setStatus(Result.SUCCESS);
			result.setResponse(customer);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			result.setStatus(Result.ERROR);
			result.setResponse("error");
			return result;
		}
	}

}
