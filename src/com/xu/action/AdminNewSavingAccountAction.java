package com.xu.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.AdminNewSavingAccountService;

public class AdminNewSavingAccountAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private AdminNewSavingAccountService adminNewSavingAccountService;
	private String cu_id;
	private String cu_name;
	private String cu_PIN;
	private String cu_PIN_repeat;
	private Customer customer;

	public AdminNewSavingAccountService getAdminNewSavingAccountService() {
		return adminNewSavingAccountService;
	}

	public void setAdminNewSavingAccountService(AdminNewSavingAccountService adminNewSavingAccountService) {
		this.adminNewSavingAccountService = adminNewSavingAccountService;
	}

	public String getCu_id() {
		return cu_id;
	}

	public void setCu_id(String cu_id) {
		this.cu_id = cu_id;
	}

	public String getCu_name() {
		return cu_name;
	}

	public void setCu_name(String cu_name) {
		this.cu_name = cu_name;
	}

	public String getCu_PIN() {
		return cu_PIN;
	}

	public void setCu_PIN(String cu_PIN) {
		this.cu_PIN = cu_PIN;
	}

	public String getCu_PIN_repeat() {
		return cu_PIN_repeat;
	}

	public void setCu_PIN_repeat(String cu_PIN_repeat) {
		this.cu_PIN_repeat = cu_PIN_repeat;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		this.clearErrorsAndMessages();				
		if (this.cu_name.equals("")) {
			this.addFieldError("error.err", "The account name is empty!");
		} else if (this.cu_id.equals("")) {
			this.addFieldError("error.err", "The id is empty!");
		} else if (this.cu_PIN.equals("")) {
			this.addFieldError("error.err", "The PIN is empty!");
		} else if (this.cu_PIN_repeat.equals("")) {
			this.addFieldError("error.err", "The PIN is empty!");
		} 
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if (!cu_PIN_repeat.equals(cu_PIN)) {
			this.addFieldError("error.err", "The PIN should be the same!");
			return ERROR;
		}
		Result result = adminNewSavingAccountService.createNewSavingAccount(cu_id, cu_name, cu_PIN);
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
