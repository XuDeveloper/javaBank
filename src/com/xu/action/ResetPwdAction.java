package com.xu.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.AdminUser;
import com.xu.service.ResetPwdService;

public class ResetPwdAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ResetPwdService resetPwdService;
	private String cu_pwd;
	private String result;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public String getCu_pwd() {
		return cu_pwd;
	}

	public void setCu_pwd(String cu_pwd) {
		this.cu_pwd = cu_pwd;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public ResetPwdService getResetPwdService() {
		return resetPwdService;
	}

	public void setResetPwdService(ResetPwdService resetPwdService) {
		this.resetPwdService = resetPwdService;
	}

	public String resetPwd() throws Exception {
		// TODO Auto-generated method stub
		String cu_id = (String) this.session.get("cur_customer_cu_id");
		if (cu_id.equals("")) {
			result = "error";
			return SUCCESS;
		}
		if (resetPwdService.resetPwd(cu_id, cu_pwd)) {
			result = "success";
		} else {
			result = "no customer";
		}
		return SUCCESS;
	}

}
