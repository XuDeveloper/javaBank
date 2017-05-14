
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/adminHeader.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s"%>
<script type="text/javascript">
	function Submit() {
		//var s = <s:property value="customer"/>;
		//alert("123" + s);
		//if(s != null) {
		//alert("Submit Successfully!");
		//document.getElementById('1').style.display = "none";
		//document.getElementById('2').style.display = "";
		//}

	}
</script>

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
<!--header-->

<div class="centercontent">
	<div id="contentwrapper" class="contentwrapper">
		<!-- <form action="AdminNewSavingAccountAction" method="post" id="1">
			<p>
				<table cellpadding="12px" cellspacing="12" width=60% height=20%>
                      <tr>
					<td align="right"><h4> Customer’s name:</h4> </td>
                              <td align="left"><input type="text"
						id="custName" align="absmiddle" name="cu_name"/></td>
				</tr>
                      <tr>  <td align="right"><h4> ID number:</h4></td>
                             <td align="left"><input type="text"
						id="custID" align="absmiddle" name="cu_id"/></td>
				</tr>
                       <tr>   <td align="right"> <h4> Saving account PIN:</h4></td>
                               <td align="left"> <input type="text"
						id="accountPIN1" align="absmiddle" name="cu_PIN" /> </td>
				</tr>
                        <tr>     <td align="right"><h4> Confirm PIN:</h4></td>
                                <td align="left"><input type="text"
						id="accountPIN2" align="absmiddle" name="cu_PIN_repeat"/>  </td> </tr>
                        <tr>   <td></td> 
                               <td align="left"><button
						type="submit" onclick="Submit()" size="80">Submit</button></td>
				</tr>
                  </table>
             </form>   -->
		<form action="main.jsp" method="post">
			<center>
               <font size="5" color="red">Open Success!</font>
            </center>
			<table id="2" cellpadding="20px" cellspacing="12" width=60%
				height=90%>
				<tr>
					<td align="right">
						<h4>Saving account number:</h4>
					</td>
					<td align="left"><text id="accountPIN1" align="absmiddle"
							height="60px" width="20px"> <s:property
							value="#request.new_customer.accountNum" /> </text></td>
				</tr>
				<tr>
					<td align="right"><h4>Card number:</h4></td>
					<td align="left"><text type="text" id="accountPIN2"
							align="absmiddle"> <s:property
							value="#request.new_customer.cardNum" /> </text></td>
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

</body>
</html>