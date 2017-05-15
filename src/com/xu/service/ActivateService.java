package com.xu.service;

import com.xu.entity.Customer;
import com.xu.entity.Result;

public interface ActivateService {
	
	public Customer findByCode(String code);
	
	public Result activate(Customer customer);

}
