package com.xu.dao;

import com.xu.entity.Result;

public interface AdminNewSavingAccountDao {

	public Result create(String cu_id, String cu_name, String cu_PIN);
}
