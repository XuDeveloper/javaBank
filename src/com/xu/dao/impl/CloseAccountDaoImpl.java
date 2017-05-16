package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.CloseAccountDao;
import com.xu.entity.Customer;

public class CloseAccountDaoImpl extends HibernateDaoSupport implements CloseAccountDao {

	@Override
	public boolean close(String cardNum) {
		// TODO Auto-generated method stub
		String hql = "from Customer c where c.cardNum=?";
		List<Customer> list = (List<Customer>) getHibernateTemplate().find(hql,
				new String[] { cardNum.replaceAll(" ", "") });
		if (list.size() != 1) {
			return false;
		}
		Customer customer = list.get(0);
		try {
			this.getHibernateTemplate().delete(customer);
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
	}

}
