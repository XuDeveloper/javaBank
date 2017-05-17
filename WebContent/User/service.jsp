<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/userHeader.jsp"></jsp:include>

    <script >
     window.onload =function() {  
            document.getElementById("accountNum").onkeyup =function() {  
                this.value =this.value.replace(/\s/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");;  
            };          
}
</script>



<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <h2 class="heading underline">Our Services</h2>
            <p class="text-center">We will offer the best services to you !</p>
        </div>
    </div>
    <br>

    
    <div class="row">
        <div class="col-sm-4">
            <div class="row m-t-50">
                <div class="col-xs-12">
                    <img src="${pageContext.request.contextPath}/Public/images/ser1.png" alt="bigdata" class="img-responsive services_icon center-block">
                </div>
                <div class="col-xs-12 text-center">
                   <h3 style="color:#06F">NEWS</h3>
                </div>
                <div class="col-xs-12 text-center">
                    <p>You can see the  latest news about the bank ,so that you can know what sevice that the bank add !!</p>                    
                </div>
            </div>
        </div>
 <div class="col-sm-4">
            <div class="row m-t-50">
                <div class="col-xs-12">
                    <img src="${pageContext.request.contextPath}/Public/images/ser3.png" alt="bigdata" class="img-responsive services_icon center-block">
                </div>
                <div class="col-xs-12 text-center">
                    <h3><a href="contact.jsp">Contect Us</a></h3>
                </div>
                <div class="col-xs-12 text-center">
                    <p>If you have any  suggestions,you can send us a email so that we can help you!!</p>    
                </div>
            </div>
        </div>           
         <div class="col-sm-4">
            <div class="row m-t-50">
                <div class="col-xs-12">
                    <img src="${pageContext.request.contextPath}/Public/images/ser2.png" alt="bigdata" class="img-responsive services_icon center-block">
                </div>
                <div class="col-xs-12 text-center">  
                  <span class="signin" data-toggle="modal" data-target="#myModal"> <h3 style="color:#06F">HELP</h3></span></div>
                <div class="col-xs-12 text-center">
                    <p>If you had any questions when using the online bank ,please click this</p>  </div>
            </div>
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
       
</section>
<!------------------Copy rights End------------------>

</body>
</html>

