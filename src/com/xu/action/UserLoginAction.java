package com.xu.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.service.UserLoginService;

public class UserLoginAction extends ActionSupport implements SessionAware, ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserLoginService userLoginService;
	private String cu_name;
	private String cu_pwd;
	private Map<String, Object> session;
	private String result;
	private HttpServletRequest request;

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
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

	public String login() throws Exception {
		// TODO Auto-generated method stub
		cu_name = request.getParameter("cu_name");
		cu_pwd = request.getParameter("cu_pwd");
		Customer customer = userLoginService.isLogin(cu_name, cu_pwd);
		if (customer != null) {
			this.session.put("customer", customer);
			result = "success";
		} else {
			result = "no customer";
		}
		return SUCCESS;
	}

	

}
