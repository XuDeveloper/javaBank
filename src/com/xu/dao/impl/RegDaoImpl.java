package com.xu.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xu.dao.RegDao;
import com.xu.entity.AdminUser;
import com.xu.entity.Result;

public class RegDaoImpl extends HibernateDaoSupport implements RegDao {
	/***
	 * 保存
	 */
	@Override
	public Result add(AdminUser user) {
		Result result = new Result();
		try {
			getHibernateTemplate().save(user);
			result.setStatus("success");
			result.setResponse(user);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			result.setStatus("error");
			result.setResponse("the account name exists");
			return result;
		}
		
	}

//	@SuppressWarnings("unchecked")
//	@Override 
//	public List<AdminUser> findUsers() {
//
//		List<AdminUser> list = (List<AdminUser>) getHibernateTemplate().execute(new HibernateCallback() {
//
//			@Override
//			public Object doInHibernate(Session session) throws HibernateException, SQLException {
//				Query query = session.createQuery("from AdminUser");
//				return query.list();
//			}
//		});
//		return list;
//	}

}
