package com.xu.service;

import com.xu.entity.Customer;
import com.xu.entity.Result;

public interface UserRegService {
	/**
	 * 添加用户
	 * */
	public Result add(Customer customer) throws Exception;
	
	public Customer findById(String cu_id) throws Exception;
}
