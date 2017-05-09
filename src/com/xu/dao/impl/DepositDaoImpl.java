package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.DepositDao;
import com.xu.entity.Customer;

public class DepositDaoImpl extends HibernateDaoSupport implements DepositDao {

	@Override
	public boolean deposit(String accountNum, Integer balance) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Customer> customers = (List<Customer>) this.getHibernateTemplate().find("from Customer c where c.accountNum=?",
				accountNum);
		if (customers.size() != 1) {
			return false;
		}
		Customer customer = customers.get(0);
		Integer ori = customer.getBalance();
		customer.setBalance(ori + balance);
		try {
			this.getHibernateTemplate().update(customer); 
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		return true;
	}

}
