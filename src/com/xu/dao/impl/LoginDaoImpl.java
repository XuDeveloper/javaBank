package com.xu.dao.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.LoginDao;
import com.xu.entity.AdminUser;
import com.xu.util.Md5Util;

public class LoginDaoImpl extends HibernateDaoSupport implements LoginDao {

	@Override
	public AdminUser isExist(String ad_account, String ad_pass) {
		// TODO Auto-generated method stub
		String hql = "from AdminUser u where u.ad_account=? and u.ad_pass=?";
		List<AdminUser> list = (List<AdminUser>) getHibernateTemplate().find(hql,
				new String[] { ad_account, Md5Util.getMd5(ad_pass) });
		if (list.size() != 1) {
			return null;
		}
		return list.get(0);
	}

}
