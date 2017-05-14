<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>login</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/style.default.css"
	type="text/css" />
</head>

<body class="loginpage">
	<div class="loginbox">
		<div class="loginboxinner">
			<div class="logo">
            	<h1 class="logo">Bank<span>Admin</span></h1>
                <span class="slogan"><h4>Administration System</h4></span>
            </div>
			<!--logo-->
			<br clear="all" />
			<br />
			
			<div>
                <div class="loginmsg">
                	<font color="red" size="4">
                		<s:fielderror fieldName="error.err"></s:fielderror>
                	</font>
                </div>
            </div><!--nousername-->
            
			<form id="login" action="LoginAction" method="post">
				<div class="username">
					<div class="usernameinner">
						<input type="text" id="username" value="" name="ad_account" style='text-font:14px '
							onfocus="javascript:if(this.value=='username')this.value='';" />
					</div>
				</div>
				<div class="password">
					<div class="passwordinner">
						<input type="password" id="password" value="" name="ad_pass" 
							onfocus="javascript:if(this.value=='password')this.value='';" />
					</div>
				</div>
				<button type="submit">Login</button>
				<p>
                <div align="right">
                <span class="slogan"><h3><a href="${pageContext.request.contextPath}/Admin/register.jsp">Register>></h3></span>
                </div>
                </p>  
			</form>
		</div>
		<!--loginboxinner-->
	</div>
	<!--loginbox-->


</body>
</html>
