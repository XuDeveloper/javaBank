package com.xu.service.impl;

import com.xu.dao.InquiryDao;
import com.xu.entity.Customer;
import com.xu.service.InquiryService;

public class InquiryServiceImpl implements InquiryService {

	private InquiryDao inquiryDao;
	
	public InquiryDao getInquiryDao() {
		return inquiryDao;
	}

	public void setInquiryDao(InquiryDao inquiryDao) {
		this.inquiryDao = inquiryDao;
	}

	@Override
	public Customer inquiry(String cu_id) {
		// TODO Auto-generated method stub
		return inquiryDao.inquiry(cu_id);
	}

}
