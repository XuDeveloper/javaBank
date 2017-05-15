

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <title>SERVICES</title>
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/wow/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/imagehover/css/imagehover.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/iCheck/css/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/custom.css">
</head>

    <script >
     window.onload =function() {  
            document.getElementById("id").onkeyup =function() {  
                this.value =this.value.replace(/\s/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");;  
            };  
             document.getElementById("accountNum").onkeyup =function() {  
                this.value =this.value.replace(/\s/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");;  
            }; 
            
        };
      function resetPwd() {
    	  if($("input[name=cu_nickname]").val() == '') {
    		  alert('Please input the account name!');
    	  } else if($("input[name=cu_id]").val() == '') {
    		  alert('Please input the account id!');
    	  } else if($("input[name=cu_email]").val() == '') {
    		  alert('Please input the account email!');
    	  } else {
    		  // ajax发起请求
    		  $.ajax({  
                  type: "post",  
                  url: "ForgetPwdAction_executeForgetPwd",  
                  data:{//设置数据源
                	  cu_nickname:$("input[name=cu_nickname]").val(),
                      cu_id:$("input[name=cu_id]").val(),
                      cu_email:$("input[name=cu_email]").val()//这里不要加","  不然会报错，而且根本不会提示错误地方
                  },
                  async: false,  
                  error: function(request) {  
                      alert("Connection error");  
                  },  
                  success: function(data) {
                	  if(data == "success") {
                		  alert('Successful!We will send the email!');
                		  window.location.href = "login.jsp";
                	  } else if(data == "no customer"){
                		  alert("Fail!The account doesn't exist");
                	  }
                  }  
              });  
    	  }
      }
        
</script>

<body background="${pageContext.request.contextPath}/Public/images/bg.jpg">
<div class="tp-header">
    <div class="container">
        <div class="row">
            <div class="col-xs-7 col-md-6">
                <img src="${pageContext.request.contextPath}/Public/images/icon.png">
              &nbsp;  <font size="+3" color="#0000FF" style="font-family:'MS Serif', 'New York', serif">Bank</font>
            </div>
            <div class="col-xs-5 col-md-6 text-right">
                <span class="signin" data-toggle="modal" data-target="#myModal"> <a  href="login.jsp"><font size="+2">Main Page</font></a></span>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 ">
            <h2 class="heading underline">Reset Password</h2>            
           <font size="+1" color="#666666"> Please conplete the following information ,so that we can help you reset the password.</font>
              <br>
              <h4 > Account Name:</h4><input  type="text" id="accountNum" name="cu_nickname" style="width:500px; font-size:28px; height:35px" >
            <h4 > ID   Number:</h4><input type="text" id="id" name="cu_id" style="width:500px; font-size:28px; height:35px" >
            <h4 > Email Address:</h4><input  type="text" id="eamil" name="cu_email" style="width:500px; font-size:28px; height:35px" >     
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="col-sm-4">
             <div class="row m-t-50">  
             <div class="col-xs-12"> 
              <button id="send" name="send" class="btn btn-success form-control" onClick="resetPwd()">Submit</button>          
                </div>
                </div>  
               <div align="right" ><a href="login.jsp"><font size="+2" color="#003399">return--></font></a></div>          
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
            <div class="col-xs-12 col-sm-6 section-top-15">              
            </div>
            <div class="col-xs-12 col-sm-6 text-right section-top-15">

                <p class="footer_text_color  ">Copyright &copy; 2017.Bank</p>
            </div>
            </div>
            </div>      
</section>
<script src="${pageContext.request.contextPath}/Public/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/wow/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/iCheck/js/icheck.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/isotope/js/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/jribbble/js/jribbble.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/countup/js/countUp.min.js"></script>
<!----------------Page Level JS-------------------->
<script src="${pageContext.request.contextPath}/Public/js/custom.js"></script>
</body>
</html>
