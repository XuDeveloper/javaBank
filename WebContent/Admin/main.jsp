<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/adminHeader.jsp"></jsp:include>
    
    
    <div class="header">
    	<ul class="headermenu">
            <li class="current"><a href="${pageContext.request.contextPath}/Admin/main.jsp"><span class="icon icon-flatscreen"></span>Mainpage</a></li>
             <li ><a href="${pageContext.request.contextPath}/Admin/opening.jsp"><span class="icon icon-pencil"></span>Opening</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/inquiry.jsp"><span class="icon icon-speech"></span>Inquiry</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/deposit.jsp"><span class="icon icon-message"></span>Deposit</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/withdrawal.jsp"><span class="icon icon-chart"></span>Withdrawal</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/changepin.jsp"><span class="icon icon-pin"></span>Change PIN</a></li>            
        </ul>
     
    </div><!--header-->
    		
    <div class="centercontent"> 
        <div id="contentwrapper" class="contentwrapper">  
        <p>
        <center>
            <form action="" method="post">
                <h1>Main page</h1>
            </form> 
             </center>    
	</div><!-- centercontent -->    
    </div><!--bodywrapper-->
    

</body>
</html>