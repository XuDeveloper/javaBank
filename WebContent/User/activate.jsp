<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/userHeader.jsp"></jsp:include>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 ">
            <h2 class="heading underline">Activate the online bank</h2>  
            <br> 
            <h4 > Your online banking account  security mail address is: </h4>
               <br>
            <h3> &nbsp;Do you want to send a eamil to activate the online banking account? </h3>      
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">        
        </div>
        <div class="col-sm-4">
             <div class="row m-t-50">  
             <div class="col-xs-12"> 
              <button id="send" name="send" class="btn btn-success form-control" onClick="window.open('activation.jsp','_self')">Send a email </button>          
                </div>
                
                <div>&nbsp;</div> 
               <div align="right" ><a href="service.jsp"><font size="+2" color="#003399">return--></font></a></div>          
            </div>
        </div>
    </div>
</div>

<!------------------Copy rights------------------->
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

</body>
</html>
