package com.xu.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.AdminUser;
import com.xu.entity.Result;
import com.xu.service.WithdrawService;

public class WithdrawAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;
	private WithdrawService withdrawService;
	private String accountNum;
	private Integer withdrawAmount;
	private String ad_sucode;
	private Map<String, Object> session;

	public WithdrawService getWithdrawService() {
		return withdrawService;
	}

	public void setWithdrawService(WithdrawService withdrawService) {
		this.withdrawService = withdrawService;
	}

	public String getAccountNum() {
		return accountNum;
	}

	public void setAccountNum(String accountNum) {
		this.accountNum = accountNum;
	}

	public Integer getWithdrawAmount() {
		return withdrawAmount;
	}

	public void setWithdrawAmount(Integer withdrawAmount) {
		this.withdrawAmount = withdrawAmount;
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
		} else if (withdrawAmount == null) {
			this.addFieldError("error.err", "The amount is empty!");
		} else if (withdrawAmount > 50000 && ad_sucode.equals("")) {
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
		Result result = withdrawService.withdraw(accountNum, withdrawAmount);
		if (result.getStatus().equals("success")) {
			return SUCCESS;
		} else {
			if (result.getResponse().equals("can not withdraw")) {
				this.addFieldError("error.err", "Can not withdraw!");
				return ERROR;
			} else if (result.getResponse().equals("can not find customer")) {
				this.addFieldError("error.err", "Can not find the account!");
				return ERROR;
			} else if (result.getResponse().equals("not sufficient balance")) {
				this.addFieldError("error.err", "not sufficient balance!");
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
