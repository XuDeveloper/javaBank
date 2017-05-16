package com.xu.service;

import com.xu.entity.Customer;
import com.xu.entity.Result;

public interface ForgetPwdActivateService {

	public Customer findByCode(String code);

}
