package com.xu.service.impl;

import com.xu.dao.ChangePinDao;
import com.xu.entity.Result;
import com.xu.service.ChangePinService;

public class ChangePinServiceImpl implements ChangePinService {
	private ChangePinDao changePinDao;

	public ChangePinDao getChangePinDao() {
		return changePinDao;
	}

	public void setChangePinDao(ChangePinDao changePinDao) {
		this.changePinDao = changePinDao;
	}

	@Override
	public Result changepin(String cardNum, String cu_id, String cu_oldpin, String cu_newpin) {
		// TODO Auto-generated method stub
		return changePinDao.changepin(cardNum, cu_id, cu_oldpin, cu_newpin);
	}
}
