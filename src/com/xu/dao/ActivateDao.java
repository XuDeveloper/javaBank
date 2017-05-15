package com.xu.dao;

import com.xu.entity.Customer;
import com.xu.entity.Result;

public interface ActivateDao {

	public Customer findByCode(String code);
	
	public Result activate(Customer customer);
}
