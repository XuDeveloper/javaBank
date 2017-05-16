package com.xu.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.AdminNewSavingAccountDao;
import com.xu.dao.ChangePinDao;
import com.xu.entity.AdminUser;
import com.xu.entity.Customer;
import com.xu.entity.Result;
import com.xu.util.Md5Utils;
import com.xu.util.NumUtils;

public class ChangePinDaoImpl extends HibernateDaoSupport implements ChangePinDao {

	@Override
	public Result changepin(String cardNum, String cu_id, String cu_oldpin, String cu_newpin) {
		// TODO Auto-generated method stub
		Result result = new Result();
		Customer customer = new Customer();
		String hql = "from Customer c where c.cardNum=? and c.cu_id=? and c.cu_PIN=?";
		List<Customer> list = (List<Customer>) getHibernateTemplate().find(hql,
				new String[] { cardNum, cu_id.replaceAll(" ", ""), cu_oldpin });
		if (list.size() != 1) {
			result.setStatus(Result.ERROR);
			result.setResponse("the account exists");
			return result;
		}
		customer = list.get(0);
		customer.setCu_PIN(cu_newpin);
		try {
			getHibernateTemplate().update(customer);
			result.setStatus(Result.SUCCESS);
			result.setResponse(customer);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			result.setStatus(Result.ERROR);
			result.setResponse("the account exists");
			return result;
		}
	}
	
}
