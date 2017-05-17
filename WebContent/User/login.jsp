

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <title>login</title>
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
    <!----------------Global css------------------->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/revolution-slider/css/layers.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/revolution-slider/css/navigation.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/revolution-slider/css/settings.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/imagehover/css/imagehover.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/sweetalert2/css/sweetalert2.min.css">
    <!----------------custo css----------------->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/custom.css">
</head>   


<script type="text/javascript" > 
     function loginForm() {
    	 var cu_name= document.getElementById("cu_name");
         var cu_pwd= document.getElementById("cu_pwd"); 
         if(cu_name.value == '') {
        	 modal({
                 type: 'alert',
                 title: 'Warning',
                  text: '<h4> Sorry,please input your Bank Account!</h4>'
        });   
         } else if(cu_pwd.value == '') {
        	 modal({
                 type: 'alert',
                 title: 'Warning',
                  text: '<h4> Sorry,please input your password!</h4>'
        });  
         } else {
        	 // ajax发起请求
   		  	 $.ajax({  
                 type: "post",  
                 url: "UserLoginAction_login",  
                 data:{//设置数据源
               	     cu_name: cu_name.value,
                     cu_pwd: cu_pwd.value
                 },
                 async: false,  
                 error: function(request) { 
                	 modal({
                         type: 'alert',
                         title: 'Warning',
                          text: '<h4> Sorry,Connection error!</h4>'
                });  
                 },  
                 success: function(data) {
               	  if(data == "success") {
               		  window.location.href = "${pageContext.request.contextPath}/User/onlinebank.jsp";
               	  } else if(data == "no customer"){
               		  
               		 modal({
                         type: 'alert',
                         title: 'Warning',
                          text: '<h4> Sorry , Wrong ID number or password!Please retry!</h4>'
                });  
               		  
               	  }
                 }  
             });  
         }
         return false;
     }
      function RegForm(){ 
          if(Validate()){ 
            //alert("Please remember your password."); 
        	// ajax发起请求
    		  $.ajax({  
                  type: "post",  
                  url: "UserRegAction_reg",  
                  data:{//设置数据源
                	  cu_nickname: $("input[name=cu_nickname]").val(),
                	  cu_id: $("input[name=cu_id]").val(),
                	  cu_email: $("input[name=cu_email]").val(),
                	  cu_pwd: $("input[name=cu_pwd]").val()
                  },
                  async: true,  
                  error: function(request) {  
                	  modal({
                          type: 'alert',
                          title: 'Warning',
                           text: '<h4> Sorry,Connection error!</h4>'
                 }); 
                  },  
                  success: function(data) {
                	  if(data == "success") {
                		  modal({
                             type: 'alert',
                             title: 'Success',
                             text: '<h4> Register successful!We will send you an email to activate!<p>Please check your mailbox in time!</h4>'
                     }); 
              		  window.location.href = "${pageContext.request.contextPath}/User/login.jsp";
                	  } else if(data == "no customer"){
                		  modal({
                              type: 'alert',
                              title: 'Error',
                              text: '<h4> Sorry,The account doesnot exist!</h4>'
                      }); 

                	  } else {
                		  modal({
                              type: 'alert',
                              title: 'Error',
                              text: '<h4> Sorry,Sending mail failed,Please retry!</h4>'
                      }); 
                		  
                	  }
                  }  
              });  
          } 
          return false;
        } 
    function Validate(){ 
        var b= document.getElementById("password1").value;
        var c= document.getElementById("repeatpassword"); 
        if($("input[name=cu_nickname]").val() == '') {
        	
        	 modal({
                 type: 'alert',
                 title: 'Warning',
                  text: '<h4> Sorry,The username can not be empty!</h4>'
        });
        	
            return false;
        }
        if($("input[name=cu_id]").val() == '') {
       	 modal({
             type: 'alert',
             title: 'Warning',
              text: '<h4> Sorry,The ID number id can not be empty!!</h4>'
    });
   	
            return false;
        }

        if($("input[name=cu_email]").val() == '') {       	
       	 modal({
             type: 'alert',
             title: 'Warning',
              text: '<h4> Sorry,the eamil address can not be empty!!</h4>'
    });                	
            return false;
        }

        if(b.value=null){ 
        	modal({
                type: 'alert',
                title: 'Warning',
                 text: '<h4> Sorry,The new password can not be empty!!</h4>'
       }); 
            return false; 
        } 

        if(checkPass(b)<3){ 
        	modal({
                type: 'alert',
                title: 'Warning',
                 text: '<h4> Sorry,The password should be at least 6 characters and contains a mixture of lower and upper case letter and digit ！!</h4>'
       });   
            return false ;   
        } 
        if(b!=c.value){ 
        	modal({
                type: 'alert',
                title: 'Warning',
                 text: '<h4> Sorry,The new password can not be different!!</h4>'
       }); 
            return false; 
        } 
          return true; 
      } 
      
        function checkPass(pass){ 
            if(pass.length< 6){   
             return 0;   
            } 
              var ls = 0; 
            if(pass.match(/([a-z])+/)){   
                  ls++;   
            }   
            if(pass.match(/([0-9])+/)){   
                  ls++; 
            }   
             if(pass.match(/([A-Z])+/)){   
                  ls++;  
                }   
if(pass.match(/[^a-zA-Z0-9]+/)){ 
   ls++;   
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
                <span class="signin" data-toggle="modal" data-target="#myModal"><span class="hidden-xs" ><font size="+1">Sign In</font></span><i
                        class="fa fa-sign-in visible-xs-block" aria-hidden="true"></i> </span>
                <span class="register" data-toggle="modal" data-target="#myModal"><span
                        class="hidden-xs"><font size="+1">Register</font></span><i class="fa fa-user-plus visible-xs-block"
                                                            aria-hidden="true"></i></span>
           </div>
            <div align="right">
             <a href="" class="hvr-underline-from-center"><font size="+3" color="#FFFFFF">Home</font></a> 
                &nbsp;
                <a href="service.jsp" class="hvr-underline-from-center"><font size="+3" color="#FFFFFF">Services</font></a>
                </div>
                
        </div>
    </div>
</div>

<!--Login And Register Modal-->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <br>
            <div class="bs-example bs-example-tabs">
                <ul id="myTab" class="nav nav-tabs ">
                    <li id="signin_tab" class="active"><a href="#signin" data-toggle="tab">Sign In</a></li>
                    <li id="reg_tab"><a href="#signup" data-toggle="tab">Register</a></li>
                </ul>
            </div>
            <div class="modal-body">
                <div id="myTabContent" class="tab-content">
                    <div class=" signin tab-pane fade active in" id="signin">
                        <form class="form-horizontal">
                            <fieldset>
                                <div class="control-group section-top-10">
                                    <label class="control-label" for="userid"> <img src="${pageContext.request.contextPath}/Public/images/username.png">&nbsp;Banking Account :</label>
                                    <div class="controls">
                                         <input id="cu_name" name="cu_name" class="form-control input-large" type="text"
                                               placeholder="Account" style="font-size:23px">
                                    </div>
                                </div>
                                <div class="control-group section-top-10">
                                    <label class="control-label" for="passwordinput"><img src="${pageContext.request.contextPath}/Public/images/password.png">&nbsp;Password :</label>
                                    <div class="controls">
                                        <input type="password" id="cu_pwd" style="font-size:26px" name="cu_pwd"  class="form-control input-medium" placeholder="Password">
                                    </div>
                                </div>
                               <div  align="right"> <a href="${pageContext.request.contextPath}/User/resetpassword.jsp">forget password?</a></div>
                               <br>
                                <div class="control-group">
                                    
                                        <button name="signin" class="btn btn-success form-control" onClick="return loginForm()">Sign In</button>
                                   
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    
                    
                    <div class="tab-pane fade signup" id="signup">
                        <form class="form-horizontal">
                            <fieldset>
                                <div class="control-group section-top-10">
                                    <label for="user"><img src="${pageContext.request.contextPath}/Public/images/username.png">&nbsp; Account
                                        :</label>
                                    <div class="controls">
                                        <input id="cu_name" name="cu_nickname" class="form-control input-large" type="text"
                                               placeholder="Name" style="font-size:24px">
                                    </div>
                                </div>
                                 <div class="control-group section-top-10">
                                    <label for="user"><img src="${pageContext.request.contextPath}/Public/images/code.png">&nbsp; ID
                                        :</label>
                                    <div class="controls">
                                        <input  type="text" id="cu_id" name="cu_id" class="form-control input-large"  
                                               placeholder="ID" style="font-size:22px">
                                    </div>
                                </div>
                                <div class="control-group section-top-10">
                                    <label class="control-label" for="Email_id"><img src="${pageContext.request.contextPath}/Public/images/mail.png">&nbsp;Email :</label>
                                    <div class="controls">
                                        <input id="eamil" name="cu_email" class="form-control input-large" type="email"
                                               placeholder="abcdef@xyz.com" style="font-size:24px">
                                    </div>
                                </div>
                                <div class="control-group section-top-10">
                                    <label for="password"><img src="${pageContext.request.contextPath}/Public/images/password.png">&nbsp;
                                        Password :</label>
                                    <div class="controls">
                                        <input id="password1" name="cu_pwd" class="form-control input-large"
                                               type="password" placeholder="Password" style="font-size:24px">

                                    </div>
                                </div>
                                <div class="control-group section-top-10">
                                    <label class="control-label" for="reenterpassword"><img src="${pageContext.request.contextPath}/Public/images/password.png">&nbsp; Re-Enter Password :</label>
                                    <div class="controls">
                                        <input id="repeatpassword" class="form-control input-large"
                                               name="cu_pwd_repeat" type="password" placeholder="Re Enter Password"
                                                style="font-size:24px">
                                    </div>
                                </div>
                                <div class="control-group section-top-10">
                                    <label class="control-label" for="confirmsignup"></label>
                                    <div class="controls">
                                        <button id="confirmsignup" name="confirmsignup"
                                                class="btn btn-success form-control" onClick="return RegForm()">Sign Up
                                        </button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="tp-banner-container rev_slider_wrapper fullwidthbanner-container" data-alias="news-hero72">
    <div class="home_slider">
                <img src="${pageContext.request.contextPath}/Public/images/main11.jpg"  style="width:100%;height:100%:margin-left:0px">      
    </div>
</div>

<section class="copy-rights">
    <div class="container ">
        <div class="row">
            <div class="col-xs-12 col-sm-6 section-top-15">               
            </div>
            <div class="col-xs-12 col-sm-6 text-right section-top-15">

                <p class="footer_text_color  ">Copyright &copy; 2017.Bank</p>
            </div>
</section>
<!------------------Copy rights End------------------>

<script src="${pageContext.request.contextPath}/Public/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/iCheck/js/icheck.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/countup/js/countUp.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/sweetalert2/js/sweetalert2.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/jribbble/js/jribbble.min.js"></script>
<!----------------------page Level Js-------------------------->
<script src="${pageContext.request.contextPath}/Public/js/custom.js"></script>
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
    
</body>
</html>
