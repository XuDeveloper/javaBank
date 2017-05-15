package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.ForgetPwdDao;
import com.xu.entity.AdminUser;
import com.xu.entity.Customer;
import com.xu.util.Md5Utils;

public class ForgetPwdDaoImpl extends HibernateDaoSupport implements ForgetPwdDao {

	@Override
	public Customer find(String cu_nickname, String cu_id, String cu_email) {
		// TODO Auto-generated method stub
		String hql = "from Customer c where c.cu_nickname=? and c.cu_id=? and c.cu_email=? ";
		List<Customer> list = (List<Customer>) getHibernateTemplate().find(hql,
				new String[] { cu_nickname, cu_id, cu_email });
		if (list.size() != 1) {
			return null;
		}
		return list.get(0);
	}

}
