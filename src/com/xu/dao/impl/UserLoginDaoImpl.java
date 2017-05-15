package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.UserLoginDao;
import com.xu.entity.AdminUser;
import com.xu.entity.Customer;
import com.xu.util.Md5Utils;

public class UserLoginDaoImpl extends HibernateDaoSupport implements UserLoginDao {

	@Override
	public Customer isExist(String ad_account, String ad_pass) {
		// TODO Auto-generated method stub
		String hql = "from Customer c where c.cu_name=? and c.cu_pwd=?";
		List<Customer> list = (List<Customer>) getHibernateTemplate().find(hql,
				new String[] { ad_account, Md5Utils.getMd5(ad_pass) });
		System.out.println("cu_id:" + ad_account + "cu_pwd:" + Md5Utils.getMd5(ad_pass));
		System.out.println(list.size() + "");
		if (list.size() != 1) {
			return null;
		}
		return list.get(0);
	}

}
