package com.xu.service.impl;

import com.xu.dao.ResetPwdDao;
import com.xu.service.ResetPwdService;

public class ResetPwdServiceImpl implements ResetPwdService {

	private ResetPwdDao resetPwdDao;

	public ResetPwdDao getResetPwdDao() {
		return resetPwdDao;
	}

	public void setResetPwdDao(ResetPwdDao resetPwdDao) {
		this.resetPwdDao = resetPwdDao;
	}

	@Override
	public boolean resetPwd(String cu_id, String new_cu_pwd) {
		// TODO Auto-generated method stub
		return resetPwdDao.resetPwd(cu_id, new_cu_pwd);
	}

}
