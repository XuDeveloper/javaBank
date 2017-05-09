package com.xu.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		// 取得请求相关的ActionContext实例  
        ActionContext ctx = invocation.getInvocationContext();  
        Map session = ctx.getSession();  
        String ad_account = (String) session.get("ad_account");  
  
        // 如果没有登陆，都返回重新登陆  
  
        if (ad_account != null) {  
            System.out.println("test");  
            return invocation.invoke();  
        }    
//        ctx.put("tip", "你还没有登录");  
        return "login";  
	}

}
