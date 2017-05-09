<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/header.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript"> 
                function confirm(){   
                    // var withdrawal=document.getElementById("withdrawal");
                    // var  accountNum=document.getElementById("accountNum");                  
                    // if(withdrawal.value<5000&&withdrawal.value!=''&&accountNum.value!='')   {               
                    //    window.open('withdrawalSuccess.jsp','_self');
                   //}    
                   //else {
                   //    alert("Please finish the infomation!");
                   //}
                }   
                function conWrite(obj){
                    if (document.getElementById(obj) != null){
                           var num =  document.getElementById(obj).value;
                           var x = parseInt(num)
                            if (x>50000) {
                                       document.getElementById('1').style.display = "";                                          
                                   }
                            else{
                                 document.getElementById('1').style.display = "none";
                            }
                      }
                  }   
</script>

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
          
            <form action="WithdrawAction" method="post">
                <p>
                <table cellpadding="12px" cellspacing="12" width=60% height=10%>
                	<tr>
				    <td></td> 
					<td align="left">
						<font color="red" size="4">
                			<s:fielderror fieldName="error.err"></s:fielderror>		
        				</font>
					</td>
					</tr>
                    <tr ><td align="right" ><h4> User account number : </h4></td>
                         <td><input type="text" id="accountNum" align="absmiddle" name="accountNum" style="width:120; height:30" /></td></tr>
                    <tr>  <td align="right" > <h4>Withdrawal amount:</h4></td>
                          <td><input type="text"  align="absmiddle" name="withdrawAmount" id="withdrawal" onMouseMove= "conWrite('withdrawal')" onKeyUp="conWrite('withdrawal')"/></td></tr>                 
                     <tr id="1" style="display :none">  <td align="right"><h4> Su code:</h4></td>
                         <td><input type="text" id="suCode" name="ad_sucode" align="absmiddle" /></tr>      
                    <tr>  <td> </td>
                        <td><input type="submit" value="Confirm" onclick="confirm()" /></td></tr>
               </table>
            </form>              
    	</div><!-- centercontent -->       
    </div><!--bodywrapper-->

</body>
</html>


