package com.xu.service;

import com.xu.entity.AdminUser;
import com.xu.entity.Result;

public interface RegService {
	/**
	 * 添加用户
	 * */
	public Result add(AdminUser user);
}
