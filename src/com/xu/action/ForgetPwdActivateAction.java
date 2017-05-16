package com.xu.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.service.ForgetPwdActivateService;
import com.xu.util.NumUtils;

public class ForgetPwdActivateAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ForgetPwdActivateService forgetPwdActivateService;
	private Map<String, Object> session;

	public ForgetPwdActivateService getForgetPwdActivateService() {
		return forgetPwdActivateService;
	}

	public void setForgetPwdActivateService(ForgetPwdActivateService forgetPwdActivateService) {
		this.forgetPwdActivateService = forgetPwdActivateService;
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
		long time = Long.parseLong(NumUtils.getFromBase64(code.substring(32)));
		if (System.currentTimeMillis() > time) {
			return ERROR;
		}
		Customer customer = forgetPwdActivateService.findByCode(code);
		if (customer == null) {
			return INPUT;
		}
		this.session.put("cur_customer_cu_id", customer.getCu_id());
		return SUCCESS;
	}

}
