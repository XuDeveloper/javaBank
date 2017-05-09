package com.xu.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.AdminUser;
import com.xu.service.DepositService;

public class DepositAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;
	private DepositService depositService;
	private String accountNum;
	private Integer depositAmount;
	private String ad_sucode;
	private Map<String, Object> session;

	public DepositService getDepositService() {
		return depositService;
	}

	public void setDepositService(DepositService depositService) {
		this.depositService = depositService;
	}

	public String getAccountNum() {
		return accountNum;
	}

	public void setAccountNum(String accountNum) {
		this.accountNum = accountNum;
	}

	public Integer getDepositAmount() {
		return depositAmount;
	}

	public void setDepositAmount(Integer depositAmount) {
		this.depositAmount = depositAmount;
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
		if (accountNum.equals("")) {
			this.addFieldError("error.err", "The account num is empty!");
		} else if (depositAmount == null) {
			this.addFieldError("error.err", "The amount is empty!");
		} else if (depositAmount > 50000 && ad_sucode.equals("")) {
			this.addFieldError("error.err", "The code is empty!");
		}
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		AdminUser adminUser = (AdminUser) this.session.get("ad_account");
		if (!ad_sucode.equals("") && !adminUser.getAd_sucode().equals(ad_sucode)) {
			this.addFieldError("error.err", "The code is wrong!");
			return ERROR;
		}
		if (depositService.deposit(accountNum, depositAmount)) {
			return SUCCESS;
		}
		this.addFieldError("error.err", "Can not find the account!");
		return ERROR;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}
}
