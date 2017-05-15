package com.xu.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.AdminUser;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.service.UserRegService;
import com.xu.util.Md5Utils;
import com.xu.util.NumUtils;
import com.xu.util.UUIDUtils;

public class UserRegAction extends ActionSupport implements SessionAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserRegService userRegService;
	private String cu_nickname;
	private String cu_id;
	private String cu_email;
	private String cu_pwd;
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
		try {
			Customer customer = userRegService.findById(cu_id);
			if (customer == null) {
				ServletActionContext.getRequest().setAttribute("reg_message", "This id doesn't exist!");
				return ERROR;
			}
			customer.setCu_nickname(cu_nickname);
			customer.setCu_email(cu_email);
			customer.setCu_pwd(Md5Utils.getMd5(cu_pwd));
			// 生成动态code
			String code = UUIDUtils.getUUID() + UUIDUtils.getUUID();
			customer.setCode(code);
			// 0.未激活 1.已激活
			customer.setStatus(0);
			Result result = userRegService.add(customer);
			if (result.getStatus() == Result.SUCCESS) {
				customer = (Customer) result.getResponse();
				this.session.put("customer", customer);
				return SUCCESS;
			} else {
				if (result.getResponse().equals("the account name exists")) {
					// this.addFieldError("error.err", "The account name exists");
					ServletActionContext.getRequest().setAttribute("reg_message", result.getResponse());
					return ERROR;
				}
				return ERROR;
			}
		} catch (Exception e) {
			// TODO: handle exception	
			ServletActionContext.getRequest().setAttribute("reg_message", "The email address doesn't exist!");
			return ERROR;
		}
		
	}

}
