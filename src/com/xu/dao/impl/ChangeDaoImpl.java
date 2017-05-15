package com.xu.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.AdminNewSavingAccountDao;
import com.xu.dao.ChangeDao;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.util.NumUtils;

public class ChangeDaoImpl extends HibernateDaoSupport implements ChangeDao {
	
	public Result change(String cu_id, String cardNum, String cu_PIN) {
		// TODO Auto-generated method stub
		Result result = new Result();
		Customer customer = new Customer();
		customer.setCu_PIN(cu_PIN);
		// "Normal", "Locked", "Not activated", "Not Available"
		customer.setAccountStatus("Not Available");
		try {
			getHibernateTemplate().save(customer);
			result.setStatus(Result.SUCCESS);
			result.setResponse(customer);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			result.setStatus(Result.ERROR);
			result.setResponse("the account exists");
			return result;
		}		
	}
	
	

}
