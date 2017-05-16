package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.ResetPwdDao;
import com.xu.entity.Customer;
import com.xu.util.Md5Utils;

public class ResetPwdDaoImpl extends HibernateDaoSupport implements ResetPwdDao {

	@Override
	public boolean resetPwd(String cu_id, String new_cu_pwd) {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		String hql = "from Customer c where c.cu_id=?";
		List<Customer> list = (List<Customer>) getHibernateTemplate().find(hql,
				new String[] { cu_id });
		if (list.size() != 1) {
			return false;
		}
		customer = list.get(0);
		customer.setCu_pwd(Md5Utils.getMd5(new_cu_pwd));
		customer.setCode("");
		try {
			getHibernateTemplate().update(customer);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}

}
