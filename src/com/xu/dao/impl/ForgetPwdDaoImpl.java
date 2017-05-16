package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.ForgetPwdDao;
import com.xu.entity.AdminUser;
import com.xu.entity.Customer;
import com.xu.util.Md5Utils;
import com.xu.util.NumUtils;
import com.xu.util.UUIDUtils;

public class ForgetPwdDaoImpl extends HibernateDaoSupport implements ForgetPwdDao {

	@Override
	public Customer find(String cu_nickname, String cu_id, String cu_email) {
		// TODO Auto-generated method stub
		String hql = "from Customer c where c.cu_nickname=? and c.cu_id=? and c.cu_email=? ";
		List<Customer> list = (List<Customer>) getHibernateTemplate().find(hql,
				new String[] { cu_nickname, cu_id.replaceAll(" ", ""), cu_email });
		if (list.size() != 1) {
			return null;
		}
		Customer customer = list.get(0);
		// 1小时后过期
		long time = System.currentTimeMillis() + 60 * 60 * 1000;
		String code = UUIDUtils.getUUID() + NumUtils.getBase64(time + "");
		customer.setCode(code);
		try {
			this.getHibernateTemplate().update(customer);
			return customer;
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}
	}

}
