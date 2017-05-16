package com.xu.service;

public interface ResetPwdService {
	public boolean resetPwd(String cu_id, String old_cu_pwd, String new_cu_pwd);
}
