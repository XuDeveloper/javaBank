package com.xu.action;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.service.CloseAccountService;

public class CloseAccountAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private CloseAccountService closeAccountService;
	private String result;

	public CloseAccountService getCloseAccountService() {
		return closeAccountService;
	}

	public void setCloseAccountService(CloseAccountService closeAccountService) {
		this.closeAccountService = closeAccountService;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String close() throws Exception {
		// TODO Auto-generated method stub
		return super.execute();
	}

}
