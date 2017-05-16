package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.InquiryDao;
import com.xu.entity.Customer;

public class InquiryDaoImpl extends HibernateDaoSupport implements InquiryDao {

	@Override
	public Customer inquiry(String cu_id) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Customer> customers = (List<Customer>) this.getHibernateTemplate().find("from Customer c where c.cu_id=?",
				cu_id.replaceAll(" ", ""));
		if (customers.size() != 1) {
			return null;
		}
		return customers.get(0);
	}

}
