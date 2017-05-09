package com.xu.dao;

import com.xu.entity.Customer;

public interface AdminNewSavingAccountDao {

	public Customer create(String cu_id, String cu_name, String cu_PIN);
}
