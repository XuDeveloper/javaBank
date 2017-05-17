
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/userHeader.jsp"></jsp:include>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 ">
        <br>
          <center>
            <img src="${pageContext.request.contextPath}/Public/images/no.jpg" > 
               <br>
            <h2> Reset password failed! </h2>   
            <br>
                <h4> Sorry to tell you that Reset password failed ,please reapply or go to the bank.</h4> 
             </center>  
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
         
        </div>
        <div class="col-sm-4">
             <div class="row m-t-50">  
             <div class="col-xs-12"> 
              <span class="signin" data-toggle="modal" data-target="#myModal">  <button name="signin" class="btn btn-success form-control" onClick="window.open('${pageContext.request.contextPath}/User/login.jsp','_self')" >Return</button></span>         
                </div>
                </div>                         
            </div>
        </div>
    </div>
</div>
</header>

<br>
<br><br><br>
<section class="copy-rights">
    <div class="container ">
        <div class="row">
            <div class="col-xs-12 col-sm-6 section-top-15">
               
            </div>
            <div class="col-xs-12 col-sm-6 text-right section-top-15">

                <p class="footer_text_color  ">Copyright &copy; 2017.Bank.</p>
            </div>
            </div>
            </div>
       
</section>

</body>
</html>

