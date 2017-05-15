package com.xu.service;

import com.xu.entity.Result;

public interface ChangePinService {
	public Result changepin(String cardNum, String cu_id, String cu_oldpin, String cu_newpin);
}
