<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Register</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/css/style.default.css"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/plugins/jquery.cookie.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/custom/general.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/custom/index.js"></script>


</head>



<body class="loginpage">
	<div class="loginbox">
		<div class="loginboxinner">

			<div class="logo">
				<h1 class="logo">
					Bank<span>Admin</span>
				</h1>
				<span class="slogan"><h4>Administration System</h4></span>
			</div>
			<!--logo-->



			<br clear="all" />
			<br />

			<div>
				<div class="loginmsg">
					<font color="red" size="4"><s:fielderror fieldName="error.err"></s:fielderror></font>
				</div>
			</div>
			<!--nousername-->

			<form id="register" method="post" action="RegAction">

				<div class="username">
					<div class="usernameinner">
						<input type="text" name="ad_account" id="username" value=""
							onfocus="javascript:if(this.value=='username')this.value='';" />
					</div>
				</div>

				<div class="password">
					<div class="passwordinner">
						<input type="password" name="ad_pass" id="password" value=""
							onfocus="javascript:if(this.value=='password')this.value='';" />
					</div>
				</div>

				<div class="password">
					<div class="passwordinner">
						<input type="password" name="ad_pass_repeat" id="password" value=""
							onfocus="javascript:if(this.value=='password_repeat')this.value='';" />
					</div>
				</div>



				<div class="phone">
					<div class="phoneinner">
						<input type="text" name="ad_sucode" id="phone" value=""
							onfocus="javascript:if(this.value=='phone')this.value='';" style="text-font:22px "/>
					</div>
				</div>
				<button type="submit">
					<h3>Register</h3>
				</button>
			</form>
		</div>
		<!--loginboxinner-->
	</div>
	<!--loginbox-->
</body>
</html>
