package com.xu.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.service.UserLoginService;

public class UserLoginAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserLoginService userLoginService;
	private String cu_name;
	private String cu_pwd;
	private Map<String, Object> session;

	public UserLoginService getUserLoginService() {
		return userLoginService;
	}

	public void setUserLoginService(UserLoginService userLoginService) {
		this.userLoginService = userLoginService;
	}

	public String getCu_name() {
		return cu_name;
	}

	public void setCu_name(String cu_name) {
		this.cu_name = cu_name;
	}

	public String getCu_pwd() {
		return cu_pwd;
	}

	public void setCu_pwd(String cu_pwd) {
		this.cu_pwd = cu_pwd;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		super.validate();
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Customer customer = userLoginService.isLogin(cu_name, cu_pwd);
		if (customer != null) {
			this.session.put("customer", customer);
//			System.out.println("ad_account:" + this.session.get("ad_account"));
			return SUCCESS;
		} else {
//			this.addFieldError("error.err", "Wrong account or password!");
			ServletActionContext.getRequest().setAttribute("login_message", "Wrong！"); 
			return INPUT;
		}
	}

}
