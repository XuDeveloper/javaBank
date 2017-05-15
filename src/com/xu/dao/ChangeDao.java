package com.xu.dao;

import com.xu.entity.Result;

public interface  ChangeDao {
	public Result change(String cu_id, String cardNum, String cu_PIN);
}
