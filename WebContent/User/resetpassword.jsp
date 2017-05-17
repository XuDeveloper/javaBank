

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<title>SERVICES</title>
<link rel="icon" type="image/png" sizes="32x32"
	href="images/favicon-32x32.png">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/vendors/wow/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/vendors/animate/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/vendors/imagehover/css/imagehover.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/vendors/iCheck/css/all.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/css/custom.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/css/jquery.modal.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/css/jquery.modal.theme-xenon.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Public/css/jquery.modal.theme-atlant.css"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/html5.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/jquery-latest.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/jquery.modal.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/Public/js/jquery.model.min.js"></script>


</head>

<script>
	window.onload = function() {
		document.getElementById("id").onkeyup = function() {
			this.value = this.value.replace(/\s/g, '').replace(
					/(\d{4})(?=\d)/g, "$1 ");
			;
		};
		document.getElementById("accountNum").onkeyup = function() {
			this.value = this.value.replace(/\s/g, '').replace(
					/(\d{4})(?=\d)/g, "$1 ");
			;
		};

	};
	function resetPwd() {
		if ($("input[name=cu_nickname]").val() == '') {
			modal({
				type : 'alert',
				title : 'Warning',
				text : '<h4> Sorry,please input your account number!</h4>'
			});
		} else if ($("input[name=cu_id]").val() == '') {
			modal({
				type : 'alert',
				title : 'Warning',
				text : '<h4> Sorry,please input your ID number!</h4>'
			});

		} else if ($("input[name=cu_email]").val() == '') {
			modal({
				type : 'alert',
				title : 'Warning',
				text : '<h4>Sorry,please input your security eamil address!</h4>'
			});
		} else {
			// ajax发起请求
			$
					.ajax({
						type : "post",
						url : "ForgetPwdAction_executeForgetPwd",
						data : {//设置数据源
							cu_nickname : $("input[name=cu_nickname]").val(),
							cu_id : $("input[name=cu_id]").val(),
							cu_email : $("input[name=cu_email]").val()
						//这里不要加","  不然会报错，而且根本不会提示错误地方
						},
						async : false,
						error : function(request) {
							modal({
								type : 'alert',
								title : 'Error',
								text : '<h4>Sorry, Connection error!Please retry.</h4>'
							});
						},
						success : function(data) {
							if (data == "success") {
								modal({
									type : 'alert',
									title : 'Successful',
									text : '<h4>Successful!We will send the email!<p>Please remember to check your mailbox!</h4>'
								});
								window.location.href = "login.jsp";
							} else if (data == "no customer") {
								modal({
									type : 'alert',
									title : 'Error',
									text : '<h4>Sorry, The account does not exist.</h4>'
								});

							}
						}
					});
		}
	}
</script>

<body
	background="${pageContext.request.contextPath}/Public/images/bg.jpg">
	<div class="tp-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-7 col-md-6">
					<img
						src="${pageContext.request.contextPath}/Public/images/icon.png">
					&nbsp; <font size="+3" color="#0000FF"
						style="font-family: 'MS Serif', 'New York', serif">Bank</font>
				</div>
				<div class="col-xs-5 col-md-6 text-right">
					<span class="signin" data-toggle="modal" data-target="#myModal">
						<a href="login.jsp"><font size="+2">Main Page</font></a>
					</span>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3 ">
				<h2 class="heading underline">Reset Password</h2>
				<font size="+1" color="#666666"> Please conplete the
					following information ,so that we can help you reset the password.</font>
				<br>
				<h4>Account Name:</h4>
				<input type="text" id="accountNum" name="cu_nickname"
					style="width: 500px; font-size: 28px; height: 35px">
				<h4>ID Number:</h4>
				<input type="text" id="id" name="cu_id"
					style="width: 500px; font-size: 28px; height: 35px">
				<h4>Email Address:</h4>
				<input type="text" id="eamil" name="cu_email"
					style="width: 500px; font-size: 28px; height: 35px">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="row m-t-50">
					<div class="col-xs-12">
						<button id="send" name="send" class="btn btn-success form-control"
							onClick="resetPwd()">Submit</button>
					</div>
				</div>
				<div align="right">
					<a href="login.jsp"><font size="+2" color="#003399">return--></font></a>
				</div>
			</div>
		</div>
	</div>
	</div>
	</header>
	<br>
	<br>
	<section class="copy-rights">
		<div class="container ">
			<div class="row">
				<div class="col-xs-12 col-sm-6 section-top-15"></div>
				<div class="col-xs-12 col-sm-6 text-right section-top-15">

					<p class="footer_text_color  ">Copyright &copy; 2017.Bank</p>
				</div>
			</div>
		</div>
	</section>

</body>
</html>
