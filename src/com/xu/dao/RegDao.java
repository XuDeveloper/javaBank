package com.xu.dao;

import com.xu.entity.AdminUser;
import com.xu.entity.Result;

public interface RegDao {
	/**
	 * 添加用户
	 */
	public Result add(AdminUser user);

}
