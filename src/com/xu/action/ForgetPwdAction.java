package com.xu.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.service.ForgetPwdService;

public class ForgetPwdAction extends ActionSupport implements ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ForgetPwdService forgetPwdService;
	private HttpServletRequest request;
	private String cu_nickname;
	private String cu_id;
	private String cu_email;
	private String result;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

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

	public ForgetPwdService getForgetPwdService() {
		return forgetPwdService;
	}

	public void setForgetPwdService(ForgetPwdService forgetPwdService) {
		this.forgetPwdService = forgetPwdService;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String executeForgetPwd() throws Exception {
		// TODO Auto-generated method stub
		cu_nickname = request.getParameter("cu_nickname");
		cu_id = request.getParameter("cu_id");
		cu_email = request.getParameter("cu_email");
		System.out.println(cu_id);
		Customer customer = forgetPwdService.find(cu_nickname, cu_id, cu_email);
		if (customer == null) {
			result = "no customer";
		} else {
			result = "success";
		}
		// 将数据存储在map里，再转换成json类型数据，也可以自己手动构造json类型数据
		// Map<String, Object> map = new HashMap<String, Object>();
		// map.put("cu_nickname", cu_nickname);
		// map.put("cu_id", cu_id);
		// map.put("cu_email", cu_email);
		// JSONObject json = JSONObject.fromObject(map);// 将map对象转换成json类型数据
		// 给result赋值，传递给页面
		return SUCCESS;
	}

}
