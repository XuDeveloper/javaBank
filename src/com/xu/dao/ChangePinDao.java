package com.xu.dao;

import com.xu.entity.Result;

public interface ChangePinDao {
	public Result changepin(String cardNum, String cu_id, String cu_oldpin, String cu_newpin);
}
