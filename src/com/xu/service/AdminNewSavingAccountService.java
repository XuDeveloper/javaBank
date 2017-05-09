package com.xu.service;

import com.xu.entity.Customer;

public interface AdminNewSavingAccountService {
	public Customer createNewSavingAccount(String cu_id, String cu_name, String cu_PIN);
}
