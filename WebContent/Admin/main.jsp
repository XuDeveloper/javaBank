<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/adminHeader.jsp"></jsp:include>clude>
    
    
    <div class="header">
    	<ul class="headermenu">
            <li class="current"><a href="${pageContext.request.contextPath}/Admin/main.jsp"><span class="icon icon-flatscreen"></span>Mainpage</a></li>
             <li ><a href="${pageContext.request.contextPath}/Admin/opening.jsp"><span class="icon icon-pencil"></span>Opening</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/inquiry.jsp"><span class="icon icon-speech"></span>Inquiry</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/deposit.jsp"><span class="icon icon-message"></span>Deposit</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/withdrawal.jsp"><span class="icon icon-chart"></span>Withdrawal</a></li>
        </ul>
     
    </div><!--header-->
    
    
    
		<div class="vernav2 iconmenu">
			<ul>
				<li><a href="" class="editor">Change PIN</a></li>
				<li><a href="" class="elements">item2</a></li>
				<li><a href="" class="widgets">Item3</a></li>
				<li><a href="" class="calendar">Item4</a></li>
			</ul>
			
		
		</div>
		
		
    <div class="centercontent"> 
        <div id="contentwrapper" class="contentwrapper">      
            <form action="" method="post">
                <h1>Main page</h1>
            </form> 
	</div><!-- centercontent -->    
    </div><!--bodywrapper-->
    

</body>
</html>