

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
        	 alert('Please input account nickname first!');
         } else if(cu_pwd.value == '') {
        	 alert('Please input password first!');
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
                     alert("Connection error");  
                 },  
                 success: function(data) {
               	  if(data == "success") {
               		  window.location.href = "${pageContext.request.contextPath}/User/main.jsp";
               	  } else if(data == "no customer"){
               		  alert("Fail!Wrong account or password!");
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
                      alert("Connection error");  
                  },  
                  success: function(data) {
                	  if(data == "success") {
                		  alert("Register successful!We will send you an email to activate!");
                		  window.location.href = "${pageContext.request.contextPath}/User/main.jsp";
                	  } else if(data == "no customer"){
                		  alert("Error!The account doesn't exist!");
                	  } else {
                		  alert("Error!Please retry!");
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
        	alert("The account name can be empty!");
            return false;
        }
        if($("input[name=cu_id]").val() == '') {
        	alert("The account id can be empty!");
            return false;
        }
        if($("input[name=cu_email]").val() == '') {
        	alert("The account email can be empty!");
            return false;
        }
        if(b.value=null){ 
            alert("The new password can be empty!");
            return false; 
        } 
        if(checkPass(b)<3){ 
            alert("The password should be at least 6 characters and contains a mixture of lower and upper case letter and digit ！");   
            return false ;   
        } 
        if(b!=c.value){ 
            alert("The two new password is different!"); 
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
                                               placeholder="ID" style="font-size:23px">
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
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Return</button>
            </div>
        </div>
    </div>
</div>


<div class="tp-banner-container rev_slider_wrapper fullwidthbanner-container" data-alias="news-hero72">
    <div class="home_slider">
        <ul>
            <li data-index="rs-10" data-transition="fade" data-slotamount="7" class="bg-light"
                data-easein="Power4.easeInOut" data-delay="5000" data-easeout="Power4.easeInOut" data-masterspeed="2000"
                data-rotate="0" data-saveperformance="off" data-title="Love it?" data-description="">
                <img src="${pageContext.request.contextPath}/Public/images/main1.jpg" alt="systemimg" data-kenburns="off" data-bgposition="center center"
                     data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120"
                     data-rotatestart="0" data-rotateend="0" data-offsetstart="0 -500" data-bgfit="cover"
                     data-offsetend="0 500" data-bgparallax="10" class="rev-slidebg" data-no-retina>
                <div class="tp-caption  sfb tp-resizeme" data-x="center"
                     data-y="120" data-speed="700" data-start="1000" data-easing="Power0.easeInOut"
                     data-splitin="words"
                     data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                     style="z-index: 5; max-width: inherit; max-height: inherit; white-space: nowrap;color: #fff;font-size:60px;font-family: lato">
                    Welcome TO  Our Bank!
                </div>
                  <div class="tp-caption grey_heavy_72 sfr tp-resizeme" data-x="center"
                     data-y="250" data-speed="700" data-start="1500" data-easing="Power0.easeInOut"
                     data-splitin="words"
                     data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                     style="z-index: 5; max-width: inherit; max-height: inherit; white-space: nowrap;color: #fff;font-size:45px;font-family: lato">
                   We will offer the best services to you !
                </div>
                
            </li>
            <li data-transition="Curtain from Middle" data-slotamount="7" data-delay="5000" data-masterspeed="600"
                class="bg-light">

                <img src="${pageContext.request.contextPath}/Public/images/main3.jpg" alt="girlimg" data-bgposition="right bottom"
                     data-duration="11000" data-ease="Linear.easeNone" data-bgfit="cover"
                     data-bgpositionend="left top">
                <div class="tp-caption grey_heavy_72 sfb tp-resizeme" data-x="center"
                     data-y="150" data-speed="700" data-start="700" data-easing="Power0.easeInOut"
                     data-splitin="lines"
                     data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                     style="z-index: 5; max-width: inherit; max-height: inherit; white-space: nowrap;color: #fff;font-size:55px;font-family: lato">
                   This Is A Reliable Bank!
                </div>
                                <div class="tp-caption grey_heavy_72 sfr tp-resizeme" data-x="center"
                     data-y="250" data-speed="700" data-start="1500" data-easing="Power0.easeInOut"
                     data-splitin="words"
                     data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                     style="z-index: 5; max-width: inherit; max-height: inherit; white-space: nowrap;color: #fff;font-size:45px;font-family: lato">
                   Security、Responsibility and High Quality!
                </div> 
            </li>
            <!---->
            <li data-index="rs-82" data-transition="fade" data-slotamount="7" data-masterspeed="500" data-delay="5000"
                data-saveperformance="on"
                data-title="Intro Slide" data-bgfit="cover">
                <img src="${pageContext.request.contextPath}/Public/images/main2.jpg" alt="girlimg" data-bgposition="right bottom"
                     data-duration="11000" data-ease="Linear.easeNone" data-bgfit="cover"
                     data-bgpositionend="left top">

                <div class="tp-caption grey_heavy_72 sfl tp-resizeme" data-x="center"
                     data-y="150" data-speed="700" data-start="700" data-easing="Power0.easeInOut"
                     data-splitin="words"
                     data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                     style="z-index: 5; max-width: inherit; max-height: inherit; white-space: nowrap;color: #fff;font-size:70px;font-family: lato">
                     This Is A  Good Bank!
                </div>
                <div class="tp-caption grey_heavy_72 sfr tp-resizeme" data-x="center"
                     data-y="250" data-speed="700" data-start="1500" data-easing="Power0.easeInOut"
                     data-splitin="words"
                     data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
                     style="z-index: 5; max-width: inherit; max-height: inherit; white-space: nowrap;color: #fff;font-size:45px;font-family: lato">
                    Best Corporate Company
                </div>
               
            </li>
        </ul>
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

</body>
</html>
