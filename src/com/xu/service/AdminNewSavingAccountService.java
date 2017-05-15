package com.xu.service;

import com.xu.entity.Result;

public interface AdminNewSavingAccountService {
	public Result createNewSavingAccount(String cu_id, String cu_name, String cu_PIN);
}
