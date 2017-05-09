package com.xu.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.AdminNewSavingAccountDao;
import com.xu.entity.Customer;

public class AdminNewSavingAccountDaoImpl extends HibernateDaoSupport implements AdminNewSavingAccountDao {

	@Override
	public Customer create(String cu_id, String cu_name, String cu_PIN) {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		customer.setCu_id(cu_id);
		customer.setCu_name(cu_name);
		customer.setCu_PIN(cu_PIN);
		customer.setBalance(0);
		customer.setAccountNum("11111112222222");
		customer.setCardNum("1111111222222233");
		// “Normal”, “Locked”, “Not activated”, “Not Available” 
		customer.setAccountStatus("Not Available");
		try {
			getHibernateTemplate().save(customer);
		} catch (Exception e) {
			// TODO: handle exception
			return null;
		}		
		return customer;
	}

}
