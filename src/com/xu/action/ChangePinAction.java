package com.xu.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.AdminUser;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.ChangePinService;

public class ChangePinAction extends ActionSupport implements SessionAware {

	private static final long serialVersionUID = 1L;
	private ChangePinService changePinService;
	private String cardNum;
	private String cu_id;
	private String cu_oldpin;
	private String cu_newpin;
	private String ad_sucode;
	private String result;
	private Customer customer;
	private Map<String, Object> session;
	
	public ChangePinService getChangePinService() {
		return changePinService;
	}

	public void setChangePinService(ChangePinService changePinService) {
		this.changePinService = changePinService;
	}

	public String getCu_id() {
		return cu_id;
	}

	public void setCu_id(String cu_id) {
		this.cu_id = cu_id;
	}

	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}

	public String getCu_oldpin() {
		return cu_oldpin;
	}

	public void setCu_oldpin(String cu_oldpin) {
		this.cu_oldpin = cu_oldpin;
	}

	public String getCu_newpin() {
		return cu_newpin;
	}

	public void setCu_newpin(String cu_newpin) {
		this.cu_newpin = cu_newpin;
	}

	public String getAd_sucode() {
		return ad_sucode;
	}

	public void setAd_sucode(String ad_sucode) {
		this.ad_sucode = ad_sucode;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	public String changepin() throws Exception {
		// TODO Auto-generated method stub
		AdminUser adminUser = (AdminUser) this.session.get("ad_account");
		if (!adminUser.getAd_sucode().equals(ad_sucode)) {
			result = "code error";
			return SUCCESS;
		}
		Result changeResult = changePinService.changepin(cardNum, cu_id, cu_oldpin, cu_newpin);
		if (changeResult.getStatus() == Result.SUCCESS) {
			result = "success";
		} else {
			result = "not exist";
		}
		return SUCCESS;
	}

}
