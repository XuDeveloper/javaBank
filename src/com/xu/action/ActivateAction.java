package com.xu.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.service.ActivateService;

public class ActivateAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ActivateService activateService;

	public ActivateService getActivateService() {
		return activateService;
	}

	public void setActivateService(ActivateService activateService) {
		this.activateService = activateService;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String code = ServletActionContext.getRequest().getParameter("code");
		return super.execute();
	}

}
