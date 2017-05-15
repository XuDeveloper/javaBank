package com.xu.dao;

import com.xu.entity.Customer;

public interface UserLoginDao {
	
	public Customer isExist(String ad_account, String ad_pass);

}
