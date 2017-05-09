package com.xu.dao;

import com.xu.entity.AdminUser;

public interface LoginDao {
	
	public AdminUser isExist(String ad_account, String ad_pass);

}
