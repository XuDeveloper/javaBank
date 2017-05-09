package com.xu.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.xu.entity.Customer;
import com.xu.service.InquiryService;

public class InquiryAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String cu_id;
	private InquiryService inquiryService;
	private Customer customer;

	public String getCu_id() {
		return cu_id;
	}

	public void setCu_id(String cu_id) {
		this.cu_id = cu_id;
	}

	public InquiryService getInquiryService() {
		return inquiryService;
	}

	public void setInquiryService(InquiryService inquiryService) {
		this.inquiryService = inquiryService;
	}
	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		this.clearErrorsAndMessages();				
		if (cu_id.equals("")) {
			this.addFieldError("error.err", "The id is empty!");
		}
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		this.customer = inquiryService.inquiry(cu_id);
		if (customer != null) {
			ServletActionContext.getRequest().setAttribute("search_customer", customer);
//			System.out.println("customer:" + this.customer.getAccountNum());
			return SUCCESS;
		}
		this.addFieldError("error.err", "Can not find id!");
		return ERROR;
	}

}
