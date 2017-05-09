package com.xu.service;

import com.xu.entity.AdminUser;

public interface LoginService {
	AdminUser isLogin(String ad_account, String ad_pass);
}
