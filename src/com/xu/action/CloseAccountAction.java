package com.xu.action;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.service.CloseAccountService;

public class CloseAccountAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private CloseAccountService closeAccountService;
	private String cardNum;
	private String result;

	public CloseAccountService getCloseAccountService() {
		return closeAccountService;
	}

	public void setCloseAccountService(CloseAccountService closeAccountService) {
		this.closeAccountService = closeAccountService;
	}

	public String getCardNum() {
		return cardNum;
	}

	public void setCardNum(String cardNum) {
		this.cardNum = cardNum;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String close() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("cardNum:" + cardNum);
		if (closeAccountService.close(cardNum)) {
			result = "success";
		} else {
			result = "not customer";
		}
		return SUCCESS;
	}

}
