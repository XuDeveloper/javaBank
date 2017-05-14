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
                    <img src="images/ser1.png" alt="bigdata" class="img-responsive services_icon center-block">
                </div>
                <div class="col-xs-12 text-center">
                   <h3><a href="activate.jsp">Activate the online bank</a></h3>
                </div>
                <div class="col-xs-12 text-center">
                    <p>You can activate the online banking account,so that you can manage you bank account more convenient!!</p>
                    
                </div>
            </div>
        </div>
        
         <div class="col-sm-4">
            <div class="row m-t-50">
                <div class="col-xs-12">
                    <img src="images/ser2.png" alt="bigdata" class="img-responsive services_icon center-block">
                </div>
                <div class="col-xs-12 text-center">  
                  <span class="signin" data-toggle="modal" data-target="#myModal"> <h3 style="color:#06F">Login the online bank</h3></span></div>
                <div class="col-xs-12 text-center">
                    <p>If you had activated the online banking account,you can manage you bank account more convenient!!</p>                  </div>
            </div>
        </div>   
        
        
         <div class="col-sm-4">
            <div class="row m-t-50">
                <div class="col-xs-12">
                    <img src="images/ser3.png" alt="bigdata" class="img-responsive services_icon center-block">
                </div>
                <div class="col-xs-12 text-center">
                    <h3><a href="contact.jsp">Contect Us</a></h3>
                </div>
                <div class="col-xs-12 text-center">
                    <p>If you have any problems or suggestions,you can send us a email so that we can help you!!</p>    
                </div>
            </div>
        </div>         
    </div>
</div>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <br>
            <div class="bs-example bs-example-tabs">
                <ul id="myTab" class="nav nav-tabs ">
                    <li id="signin_tab" class="active"><a href="#signin" data-toggle="tab">Login the Online Bank!</a></li>                  
                </ul>
            </div>
            <div class="modal-body">
                <div id="myTabContent" class="tab-content">
                    <div class=" signin tab-pane fade active in" id="signin">
                        <form class="form-horizontal">
                            <fieldset>
                                <div class="control-group section-top-10">
                                    <label class="control-label" for="userid"> <img src="images/username.png">&nbsp;User Account :</label>
                                    <div class="controls">
                                         <input id="accountNum" name="userid" class="form-control input-large" type="text"
                                               placeholder="Name" required style="font-size:23px">
                                    </div>
                                </div>
                                <div class="control-group section-top-10">
                                    <label class="control-label" for="passwordinput"><img src="images/password.png">&nbsp;Password :</label>
                                    <div class="controls">
                                        <input type="password" id="password" name="password"
                                               class="form-control input-medium" placeholder="Password" required style="font-size:26px">
                                    </div>
                                </div>
                                 <div>&nbsp;</div>
                                <div class="control-group">
                                    
                                        <button name="signin" class="btn btn-success form-control"  onClick="window.open('onlinebank.jsp','_self')">Submit</button>
                                   
                                </div>
                            </fieldset>
                        </form>
                        
                    </div>
                    </div>
                    </div>
 <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Return</button>
            </div>
</div></div></div>

<!----------------Our Services Section End---------->
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

