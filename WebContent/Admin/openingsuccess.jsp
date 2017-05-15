
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/adminHeader.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s"%>

<div class="header">
	<ul class="headermenu">
		<li><a href="${pageContext.request.contextPath}/Admin/main.jsp"><span
				class="icon icon-flatscreen"></span>Mainpage</a></li>
		<li class="current"><a
			href="${pageContext.request.contextPath}/Admin/opening.jsp"><span
				class="icon icon-pencil"></span>Opening</a></li>
		<li><a
			href="${pageContext.request.contextPath}/Admin/inquiry.jsp"><span
				class="icon icon-speech"></span>Inquiry</a></li>
		<li><a
			href="${pageContext.request.contextPath}/Admin/deposit.jsp"><span
				class="icon icon-message"></span>Deposit</a></li>
		<li><a
			href="${pageContext.request.contextPath}/Admin/withdrawal.jsp"><span
				class="icon icon-chart"></span>Withdrawal</a></li>
	</ul>
</div>

<div class="centercontent">
	<div id="contentwrapper" class="contentwrapper">
	
		<form action="main.jsp" method="post">
			<center>
               <font size="5" color="red">Open Success!</font>
            </center>
            
			<table cellpadding="16px" cellspacing="16" width=60% height=10%>
				<tr>
					<td align="right">
						<h3>Saving account number:</h3>
					</td>
					<td align="left" id="account" style="font-size:24px"><s:property value="#request.new_customer.accountNum" /> </td>
				</tr>
				<tr>
					<td align="right"><h3>Card number:</h3></td>
					<td align="left" style=" font-size:24px;" id="card"> <s:property value="#request.new_customer.cardNum" /> </text></td>
				</tr>
				<tr>
					<td></td>
					<td align="left"><input type="button" value="Return" size="80"
						style="background-color: #32415a; border-radius: 3px; width: 70px; margin: 0px auto; border: none; height: 30px; color: #fff;"
						onClick="window.open('main.jsp','_self')" /></td>
				</tr>
			</table>
		</form>
	</div>
	<!-- centercontent -->
</div>
<!--bodywrapper-->

 <script >
 window.onload =function() {        
         
         var td2 = document.getElementById("account").innerHTML;                  
         var str2=td2.replace(/(\d{4})/g,'$1  ').replace(/\s*$/,'');        
         document.getElementById("account").innerHTML=str2;         
         
         var td3 = document.getElementById("card").innerHTML;                  
         var str3=td3.replace(/(\d{4})/g,'$1  ').replace(/\s*$/,'');        
         document.getElementById("card").innerHTML=str3;  
  };  

 </script>   


</body>
</html>