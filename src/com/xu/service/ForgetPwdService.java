package com.xu.service;

import com.xu.entity.Customer;

public interface ForgetPwdService {
	Customer find(String cu_nickname, String cu_id, String cu_email);
}
