package com.xu.service;

import com.xu.entity.Customer;

public interface UserLoginService {
	Customer isLogin(String ad_account, String ad_pass);
}
