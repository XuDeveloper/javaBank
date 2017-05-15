package com.xu.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.AdminNewSavingAccountService;
import com.xu.service.ChangeService;

public class ChangeAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private ChangeService changeService;
	private String cu_id;
	private String cardNum;
	private String cu_PIN;
	private Customer customer;

	public ChangeService changeService() {
		return changeService;
	}

	public void setChangeService(ChangeService changeService) {
		this.changeService = changeService;
	}

	public String getCu_id() {
		return cu_id;
	}

	public void setCu_id(String cu_id) {
		this.cu_id = cu_id;
	}


	public String getCu_PIN() {
		return cu_PIN;
	}

	public void setCu_PIN(String cu_PIN) {
		this.cu_PIN = cu_PIN;
	}


	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}


	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Result result = changeService.changepin(cu_id, cardNum,cu_PIN);
		if (result.getStatus() == Result.SUCCESS) {
			this.customer = (Customer) result.getResponse();
			if (customer != null) {
				// ActionContext ct = ActionContext.getContext();
				// ct.put("new_account", customer);
				ServletActionContext.getRequest().setAttribute("new_customer", customer);
				// System.out.println("customer:" + this.customer.getAccountNum());
				return SUCCESS;
			}
		} else {
			this.addFieldError("error.err", "Open error, please input another id!");
			return ERROR;
		}		
		return ERROR;
	}
}
