package com.xu.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.ActivateService;

public class ActivateAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ActivateService activateService;
	private Map<String, Object> session;

	public ActivateService getActivateService() {
		return activateService;
	}

	public void setActivateService(ActivateService activateService) {
		this.activateService = activateService;
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String code = ServletActionContext.getRequest().getParameter("code");
		Customer customer = activateService.findByCode(code);
		if (customer == null) {
			return ERROR;
		}
		Result result = activateService.activate(customer);
		if (result.getStatus() == Result.SUCCESS) {
			this.session.put("customer", customer);
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

}
