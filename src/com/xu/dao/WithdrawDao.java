package com.xu.dao;

import com.xu.entity.Result;

public interface WithdrawDao {
	public Result withdraw(String accountNum, Integer balance);
}
