package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.ForgetPwdActivateDao;
import com.xu.dao.ForgetPwdDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;

public class ForgetPwdActivateDaoImpl extends HibernateDaoSupport implements ForgetPwdActivateDao {

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

}
