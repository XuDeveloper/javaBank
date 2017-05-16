package com.xu.dao;

public interface ResetPwdDao {
	
	public boolean resetPwd(String cu_id, String old_cu_pwd, String new_cu_pwd);

}
