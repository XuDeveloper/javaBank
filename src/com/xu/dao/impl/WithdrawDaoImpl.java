package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.WithdrawDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;

public class WithdrawDaoImpl extends HibernateDaoSupport implements WithdrawDao {

	@Override
	public Result withdraw(String accountNum, Integer balance) {
		// TODO Auto-generated method stub
		Result result = new Result();
		@SuppressWarnings("unchecked")
		List<Customer> customers = (List<Customer>) this.getHibernateTemplate().find("from Customer c where c.accountNum=?",
				accountNum);
		if (customers.size() != 1) {
			result.setStatus(Result.ERROR);
			result.setResponse("can not find customer");
			return result;
		}
		Customer customer = customers.get(0);
		Integer ori = customer.getBalance();
		System.out.println("ori:" + ori.intValue());
		System.out.println("balance:" + balance.intValue());
		if (ori - balance < 0) {
			result.setStatus(Result.ERROR);
			result.setResponse("not sufficient balance");
			return result;
		}
		customer.setBalance(ori - balance);
		try {
			this.getHibernateTemplate().update(customer); 
		} catch (Exception e) {
			// TODO: handle exception
			result.setStatus(Result.ERROR);
			result.setResponse("can not withdraw");
			return result;
		}
		result.setStatus(Result.SUCCESS);
		result.setResponse("");
		return result;
	}

}
