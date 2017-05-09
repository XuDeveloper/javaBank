<%@page contentType="text/html" pageEncoding="UTF-8" %>
<jsp:include page="../Public/header.jsp"></jsp:include>
<!DOCTYPE html>
    <div class="header">
    	<ul class="headermenu">
            <li ><a href="${pageContext.request.contextPath}/Admin/main.jsp"><span class="icon icon-flatscreen"></span>Mainpage</a></li>
            <li ><a href="${pageContext.request.contextPath}/Admin/opening.jsp"><span class="icon icon-pencil"></span>Opening</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/inquiry.jsp"><span class="icon icon-speech"></span>Inquiry</a></li>
            <li ><a href="${pageContext.request.contextPath}/Admin/deposit.jsp"><span class="icon icon-message"></span>Deposit</a></li>
             <li class="current"><a href="${pageContext.request.contextPath}/Admin/withdrawal.jsp"><span class="icon icon-chart"></span>Withdrawal</a></li>
        </ul>
      </div><!--header-->  
      
      
    <div class="centercontent"> 
        <div id="contentwrapper" class="contentwrapper">
             <p>
            <center><font size="6"> Withdraw success!</font>
                <p> </p>
            <input type="button" value="Return"  size="80"  onClick="window.open('main.jsp','_self')" style="background-color:#32415a ; border-radius: 3px;width:70px;margin:0px auto; border:none; height:30px; color:#fff;"/>
            </center>
            
      </div><!-- centercontent -->       
    </div><!--bodywrapper-->

</body>
</html>
