package com.xu.dao;

import com.xu.entity.Customer;

public interface ForgetPwdDao {
	Customer find(String cu_nickname, String cu_id, String cu_email);
}
