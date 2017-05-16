package com.xu.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.AdminUser;

public class ResetPwdAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private Map<String, Object> session;
	
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}
	
	public String resetPwd() throws Exception {
		// TODO Auto-generated method stub
		String cu_id = (String) this.session.get("cur_customer_cu_id");
		return SUCCESS;
	}
	
	

}
