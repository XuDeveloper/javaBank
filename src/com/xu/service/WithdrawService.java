package com.xu.service;

import com.xu.entity.Result;

public interface WithdrawService {
	public Result withdraw(String accountNum, Integer balance);
}
