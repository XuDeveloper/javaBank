
<%@page import="com.xu.entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <title>SERVICES</title>
    <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/Public/images/favicon-32x32.png">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/wow/css/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/animate/animate.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/imagehover/css/imagehover.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/vendors/iCheck/css/all.css">
    <!-------------------custom css-------------------->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Public/css/custom.css">
    <script src="${pageContext.request.contextPath}/Public/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/wow/js/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/iCheck/js/icheck.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/isotope/js/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/jribbble/js/jribbble.min.js"></script>
<script src="${pageContext.request.contextPath}/Public/vendors/countup/js/countUp.min.js"></script>
<!----------------Page Level JS-------------------->
<script src="${pageContext.request.contextPath}/Public/js/custom.js"></script>
</head>

<%
   Customer customer= (Customer)session.getAttribute("customer");
%>

<body background="${pageContext.request.contextPath}/Public/images/bg.jpg">
<div class="tp-header">
    <div class="container">
        <div class="row">
            <div class="col-xs-7 col-md-6">
               
            </div> 
            <div class="col-xs-5 col-md-6" align="right">
               <font color="#999999"><%=customer.getCu_nickname() %></font> &nbsp;
               <a href="service.jsp" class="hvr-underline-from-center"><font color="#999999">Logout</font></a>
            </div>
        </div>
    </div>
</div>

<!----------------Our Services Section---------->
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <h2 class="heading underline">Online Services</h2>
            <p class="text-center">We will offer the best services to you !</p>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-sm-4">
           
        </div>
        
         <div class="col-sm-4">
            <div class="row m-t-50">
                <div class="col-xs-12">
                    <img src="${pageContext.request.contextPath}/Public/images/ser2.png" alt="bigdata" class="img-responsive services_icon center-block">
                </div>
                <div class="col-xs-12 text-center">  
                  <span class="signin" data-toggle="modal" data-target="#myModal"> <h3 style="color:#06F">Not Available Yet</h3></span></div>
                <div class="col-xs-12 text-center">
                    <p>Sorry to tell you that the online bank is not available now.</p>                  </div>
            </div>
        </div>          
         <div class="col-sm-4">
           
        </div>         
    </div>
</div>
<br>
<br>
<br>

<!------------------Copy rights------------------->
<section class="copy-rights">
    <div class="container ">
        <div class="row">
            <div class="col-xs-12 col-sm-6 section-top-15">
               
            </div>
            <div class="col-xs-12 col-sm-6 text-right section-top-15">

                <p class="footer_text_color  ">Copyright &copy; 2017.Bank.</p>
            </div>
       </div>
</section>
<!------------------Copy rights End------------------>

</body>
</html>

