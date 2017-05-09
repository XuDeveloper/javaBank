
<%@page import="com.xu.entity.AdminUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>page</title>
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
	src="${pageContext.request.contextPath}/Public/js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/plugins/jquery.slimscroll.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/custom/general.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/custom/dashboard.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/plugins/excanvas.min.js"></script><![endif]-->
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<%
   AdminUser user= (AdminUser)session.getAttribute("ad_account");
%>

<body class="withvernav">
	<div class="bodywrapper">
		<div class="topheader">
			<div class="left">
				<h1 class="logo">
					Bank<span>Bank</span>
				</h1>
				<span class="slogan"><h4>Administration System</h4></span> <br
					clear="all" />
			</div>
			<!--left-->

			<div class="right">
				<div class="userinfo">
					<img
						src="${pageContext.request.contextPath}/Public/images/avatar5.png"
						alt="" /> <span><%=user.getAd_account() %></span>
				</div>
				<!--userinfo-->
				<div class="userinfodrop">
					<div class="avatar">
						<h4>Head portrait</h4>
					</div>
					<!--avatar-->
					<div class="userdata">
						<h4><%=user.getAd_account() %></h4>
						<span class="email"></span>
						<ul>
							<li><a href="">Edit details</a></li>
							<li><a href="">Setting</a></li>
							<li><a href="">help</a></li>
							<li><a href="${pageContext.request.contextPath}/Admin/login.jsp">Exit</a></li>
						</ul>
					</div>
					<!--userdata-->
				</div>
				<!--userinfodrop-->
			</div>
			<!--right-->
		</div>
		<!--topheader-->

		<div class="vernav2 iconmenu">
			<ul>
				<li><a href="" class="editor">Item1</a></li>
				<li><a href="" class="elements">item2</a></li>
				<li><a href="" class="widgets">Item3</a></li>
				<li><a href="" class="calendar">Item4</a></li>


			</ul>
			<a class="togglemenu"></a> <br />
			<br />
		</div>
		<!--leftmenu-->
	</div>
</body>
</html>