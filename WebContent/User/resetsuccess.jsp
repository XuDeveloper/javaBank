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
	href="${pageContext.request.contextPath}/Public/images/favicon-32x32.png">
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


<script type="text/javascript">
	function SubmitForm() {
		if (Validate()) {

			$.ajax({
				type : "post",
				url : "ResetPwdAction_resetPwd",
				data : {
					cu_pwd : document.getElementById("password").value
				},
				async : false,
				error : function(request) {
					modal({
                        type: 'alert',
                        title: 'Error',
                         text: '<h4>Sorry, Connection error!Please retry.</h4>'
               }); 
				},
				success : function(data) {
					if (data == "success") {
						 modal({
                             type: 'alert',
                             title: 'Successful',
                              text: '<h4>Successful!Please login again!</h4>'
                    });
						window.open('${pageContext.request.contextPath}/User/login.jsp', '_self');
					} else if (data == "no customer") {
						 modal({
                             type: 'alert',
                             title: 'Error',
                              text: '<h4>Sorry, The account doesnot exist.</h4>'
                    });
					} else if (data == "error") {
						modal({
	                          type: 'alert',
	                          title: 'Error',
	                           text: '<h4>Sorry, Reset error!Please retry.</h4>'
	                 }); 
					}
				}
			});

		}
	}
	function Validate() {
		var b = document.getElementById("password").value;
		var c = document.getElementById("repeatpassword");
		if (b.value = null) {
			
			modal({
                type: 'alert',
                title: 'Error',
                 text: '<h4>Sorry,The new password can be empty!</h4>'
       }); 
			
			return false;
		}
		if (checkPass(b) < 4) {
			modal({
                type: 'alert',
                title: 'Error',
                 text: '<h4>Sorry,The complexity of the new password is no enough!<p>it should include the capital capital and small letter、 small letter and number ！</h4>'
       }); 
			return false;
		}
		if (b != c.value) {
			modal({
                type: 'alert',
                title: 'Error',
                 text: '<h4>Sorry,The two new password is different!</h4>'
       }); 	
			return false;
		}
		if (b === c.value) {
			if (checkPass(b) < 4) {
				modal({
	                type: 'alert',
	                title: 'Error',
	                 text: '<h4>Sorry,The complexity of the new password is no enough!<p>it should include the capital capital and small letter、 small letter and number ！</h4>'
	       });
				return false;
			}
			return true;
		}
	}

	function checkPass(pass) {
		if (pass.length < 6) {
			return 0;
		}
		var ls = 0;
		if (pass.match(/([a-z])+/)) {
			ls++;
		}
		if (pass.match(/([0-9])+/)) {
			ls++;

		}
		if (pass.match(/([A-Z])+/)) {
			ls++;

		}
		if (pass.match(/[^a-zA-Z0-9]+/)) {
			ls++;
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
						<a href="${pageContext.request.contextPath}/User/login.jsp"><font size="+2">Main Page</font></a>
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
				<h4>new password:</h4>
				<input type="password" id="password"
					style="width: 500px; font-size: 28px; height: 35px">
				<h4>Confirm password:</h4>
				<input type="password" id="repeatpassword"
					style="width: 500px; font-size: 28px; height: 35px">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<div class="row m-t-50">
					<div class="col-xs-12">
						<button id="send" name="send" class="btn btn-success form-control"
							onclick="SubmitForm()">Submit</button>
					</div>
				</div>
				<div>&nbsp;</div>
				<div align="right">
					<a href="${pageContext.request.contextPath}/User/login.jsp"><font size="+2" color="#003399">return--></font></a>
				</div>
			</div>
		</div>
	</div>
	</div>

	<div class="container" id="success" style="display: none">
		<img src="images/yes.jpg">
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
