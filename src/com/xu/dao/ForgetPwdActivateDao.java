package com.xu.dao;

import com.xu.entity.Customer;

public interface ForgetPwdActivateDao {

	public Customer findByCode(String code);

}
