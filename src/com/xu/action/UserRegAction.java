package com.xu.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.UserRegService;
import com.xu.util.Md5Utils;
import com.xu.util.UUIDUtils;

public class UserRegAction extends ActionSupport implements SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserRegService userRegService;
	private String cu_nickname;
	private String cu_id;
	private String cu_email;
	private String cu_pwd;
	private String result;
	private Map<String, Object> session;

	public String getCu_nickname() {
		return cu_nickname;
	}

	public void setCu_nickname(String cu_nickname) {
		this.cu_nickname = cu_nickname;
	}

	public String getCu_id() {
		return cu_id;
	}

	public void setCu_id(String cu_id) {
		this.cu_id = cu_id;
	}

	public String getCu_email() {
		return cu_email;
	}

	public void setCu_email(String cu_email) {
		this.cu_email = cu_email;
	}

	public String getCu_pwd() {
		return cu_pwd;
	}

	public void setCu_pwd(String cu_pwd) {
		this.cu_pwd = cu_pwd;
	}

	public UserRegService getUserRegService() {
		return userRegService;
	}

	public void setUserRegService(UserRegService userRegService) {
		this.userRegService = userRegService;
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
	
	public String reg() {
		// TODO Auto-generated method stub
		try {
			System.out.println(cu_id);
			Customer customer = userRegService.findById(cu_id);
			if (customer == null) {
				result = "no customer";
				return SUCCESS;
			}
			customer.setCu_nickname(cu_nickname);
			customer.setCu_email(cu_email);
			customer.setCu_pwd(Md5Utils.getMd5(cu_pwd));
			// 生成动态code
			String code = UUIDUtils.getUUID() + UUIDUtils.getUUID();
			customer.setCode(code);
			// 0.未激活 1.已激活
			customer.setStatus(0);
			Result regresult = userRegService.add(customer);
			if (regresult.getStatus() == Result.SUCCESS) {
				customer = (Customer) regresult.getResponse();
				this.session.put("customer", customer);
			} else {
				if (regresult.getResponse().equals("the account name exists")) {
					// this.addFieldError("error.err", "The account name exists");
					result = "error";
				}
			}
		} catch (Exception e) {
			// TODO: handle exception	
			result = "error";
			return SUCCESS;
		} 
		return SUCCESS;
		
	}

	

}
