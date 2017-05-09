package com.xu.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.AdminUser;
import com.xu.service.LoginService;

public class LoginAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private LoginService loginService;
	private String ad_account;
	private String ad_pass;
	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	public String getAd_account() {
		return ad_account;
	}

	public void setAd_account(String ad_account) {
		this.ad_account = ad_account;
	}

	public String getAd_pass() {
		return ad_pass;
	}

	public void setAd_pass(String ad_pass) {
		this.ad_pass = ad_pass;
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		this.clearErrorsAndMessages();
		if (this.ad_account.equals("")) {
			this.addFieldError("error.err", "The account is empty!");
		} else if (this.ad_pass.equals("")) {
			this.addFieldError("error.err", "The password is empty!");
		}
	}

	@Override
	public String execute() throws Exception {
		AdminUser adminUser = loginService.isLogin(ad_account, ad_pass);
		if (adminUser != null) {
			this.session.put("ad_account", adminUser);
//			System.out.println("ad_account:" + this.session.get("ad_account"));
			return SUCCESS;
		} else {
			this.addFieldError("error.err", "Wrong account or password!");
			return INPUT;
		}

	}

}
