
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/adminHeader.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript">
window.onload =function() {  
    document.getElementById("custID").onkeyup =function() {  
        this.value =this.value.replace(/\s/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");;  
    };    
};  	
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
		 <li><a href="${pageContext.request.contextPath}/Admin/changepin.jsp"><span class="icon icon-pin"></span>Change PIN</a></li> 
	</ul>
</div>
<!--header-->

<div class="centercontent">
	<div id="contentwrapper" class="contentwrapper">
		<form action="AdminNewSavingAccountAction" method="post">
			<p>
				<table  cellpadding="16px" cellspacing="16" width=60% height=10%>
				<tr>
				    <td></td> 
					<td align="left">
						<font color="red" size="4">
                			<s:fielderror fieldName="error.err"></s:fielderror>		
        				</font>
					</td>
				</tr>
                      <tr>
					<td align="right"><h3> Customer’s name:</h3> </td>
                              <td align="left"><input type="text"
						id="custName" align="absmiddle" name="cu_name" style=" width:100%;  font-size:24px;MaxLenth:1"/></td>
				</tr>
                      <tr>  <td align="right"><h3> ID number:</h3></td>
                             <td align="left"><input type="text"
						id="custID" align="absmiddle" name="cu_id" style=" width:100%;  font-size:24px;"/></td>
				</tr>
                       <tr>   <td align="right"> <h3> Saving account PIN:</h3></td>
                               <td align="left"> <input type="text"
						id="accountPIN1" align="absmiddle" name="cu_PIN" style=" width:100%;  font-size:24px;"/> </td>
				</tr>
                        <tr>     <td align="right"><h3> Confirm PIN:</h3></td>
                                <td align="left"><input type="text"
						id="accountPIN2" align="absmiddle" name="cu_PIN_repeat" style=" width:100%;  font-size:24px;"/>  </td> </tr>
                        <tr>   <td></td> 
                               <td align="left"><input type="submit"  size="80" value="Submit" style=" font-size:16px;"> </td>
				</tr>
                  </table>
             </form>  
           
	</div>
	<!-- centercontent -->  
    </div><!--bodywrapper-->

</body>
				</html>