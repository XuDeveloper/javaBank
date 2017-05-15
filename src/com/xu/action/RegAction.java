package com.xu.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.AdminUser;
import com.xu.entity.Result;
import com.xu.service.RegService;
import com.xu.util.Md5Utils;

public class RegAction extends ActionSupport implements SessionAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private RegService regService;
	private String ad_account;
	private String ad_pass;
	private String ad_pass_repeat;
	private String ad_sucode;
	private Map<String, Object> session;

	public void setRegService(RegService regService) {
		this.regService = regService;
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
	
	public String getAd_pass_repeat() {
		return ad_pass_repeat;
	}

	public void setAd_pass_repeat(String ad_pass_repeat) {
		this.ad_pass_repeat = ad_pass_repeat;
	}

	public String getAd_sucode() {
		return ad_sucode;
	}

	public void setAd_sucode(String ad_sucode) {
		this.ad_sucode = ad_sucode;
	}
	
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		this.clearErrorsAndMessages();
		if (this.ad_account.equals("")) {
			this.addFieldError("error.err", "The account is empty!");
		} else if (this.ad_pass.equals("")) {
			this.addFieldError("error.err", "The password is empty!");
		} else if (this.ad_pass_repeat.equals("")) {
			this.addFieldError("error.err", "The password_repeat is empty!");
		} else if (this.ad_sucode.equals("")) {
			this.addFieldError("error.err", "The sucode is empty!");
		}
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if (!ad_pass.equals(ad_pass_repeat)) {
			this.addFieldError("error.err", "The password isn't equal to the repeat password!");
			return ERROR;
		}
		AdminUser user = new AdminUser();
		user.setAd_account(ad_account);
		user.setAd_pass(Md5Utils.getMd5(ad_pass));
		user.setAd_sucode(ad_sucode);
		Result result = regService.add(user);
		if (result.getStatus() == Result.SUCCESS) {
			user = (AdminUser) result.getResponse();
			this.session.put("ad_account", user);
			return SUCCESS;
		} else {
			if (result.getResponse().equals("the account name exists")) {
				this.addFieldError("error.err", "The account name exists");
				return ERROR;
			}
		}
		return ERROR;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}


}
