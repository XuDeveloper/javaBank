package com.xu.dao;

import com.xu.entity.Customer;
import com.xu.entity.Result;

public interface UserRegDao {
	/**
	 * 添加用户
	 */
	public Result add(Customer customer);

}
