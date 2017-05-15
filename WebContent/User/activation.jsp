
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
        <div class="col-sm-6 col-sm-offset-3 ">
        <br>
          <center>
            <img src="${pageContext.request.contextPath}/Public/images/yes.jpg" > 
               <br>
            <h2> Activated Successfully~~ </h2>   
            <br>
                <h4> Login the Online Bank now? </h4> 
             </center>  
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
         
        </div>
        <div class="col-sm-4">
             <div class="row m-t-50">  
             <div class="col-xs-12"> 
              <span class="signin" data-toggle="modal" data-target="#myModal">  <button name="signin" class="btn btn-success form-control">GO</button></span>         
                </div>
                </div>  
                <div>&nbsp;</div> 
               <div align="right" ><a href="service.jsp"><font size="+2" color="#003399">return--></font></a></div>          
            </div>
        </div>
    </div>
</div>
</header>


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
                                    <label class="control-label" for="userid"> <img src="images/username.png">&nbsp;User Account:</label>
                                    <div class="controls">
                                         <input id="accountNum" name="accountNum" class="form-control input-large" type="text"
                                               placeholder="Name" required style="font-size:26px">
                                    </div>
                                </div>
                                <div class="control-group section-top-10">
                                    <label class="control-label" for="passwordinput"><img src="images/password.png">&nbsp;Password :</label>
                                    <div class="controls">
                                        <input type="password" id="passwordinput" name="passwordinput"
                                               class="form-control input-medium" placeholder="Password" required style="font-size:26px">
                                    </div>
                                </div>
                                 <div>&nbsp;</div>
                                <div class="control-group">
                                    
                                        <button name="signin" class="btn btn-success form-control" onClick="window.open('onlinebank.jsp','_self')" >Submit</button>
                                   
                                </div>
                            </fieldset>
                        </form>
                        <div>&nbsp;</div>
                    </div>
                    </div>

</div></div></div></div>

<br>
<br>
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

