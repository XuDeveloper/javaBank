<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/adminHeader.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript"> 
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
                function format(s){
                   if(/[^0-9\.]/.test(s)) return "invalid value";
                     s=s.replace(/^(\d*)$/,"$1.");
                    s=(s+"00").replace(/(\d*\.\d\d)\d*/,"$1");
                    s=s.replace(".",",");
                    var re=/(\d)(\d{3},)/;
                   while(re.test(s))
                         s=s.replace(re,"$1,$2");
                      s=s.replace(/,(\d\d)$/,".$1");
                      return s.replace(/^\./,"0.");
                 }    
                
                window.onload =function() {  
                    document.getElementById("accountNum").onkeyup =function() {  
                        this.value =this.value.replace(/\s/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");;  
                    };  
                 };  
                     
                
</script>

    <div class="header">
    	<ul class="headermenu">
            <li ><a href="${pageContext.request.contextPath}/Admin/main.jsp"><span class="icon icon-flatscreen"></span>Mainpage</a></li>
            <li ><a href="${pageContext.request.contextPath}/Admin/opening.jsp"><span class="icon icon-pencil"></span>Opening</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/inquiry.jsp"><span class="icon icon-speech"></span>Inquiry</a></li>
            <li ><a href="${pageContext.request.contextPath}/Admin/deposit.jsp"><span class="icon icon-message"></span>Deposit</a></li>
             <li class="current"><a href="${pageContext.request.contextPath}/Admin/withdrawal.jsp"><span class="icon icon-chart"></span>Withdrawal</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/changepin.jsp"><span class="icon icon-pin"></span>Change PIN</a></li> 
        </ul>
      </div><!--header-->    
      
      
    <div class="centercontent"> 
        <div id="contentwrapper" class="contentwrapper">
          
            <form action="WithdrawAction" method="post">
                <p>
                <table cellpadding="16px" cellspacing="16" width=60% height=10%>
                	<tr>
				    <td></td> 
					<td align="left">
						<font color="red" size="4">
                			<s:fielderror fieldName="error.err"></s:fielderror>		
        				</font>
					</td>
					</tr>
                    <tr ><td align="right" ><h3> User account number : </h3></td>
                         <td><input type="text" id="accountNum" align="absmiddle" name="accountNum"  style=" width:100%;  font-size:24px;"/></td></tr>
                    <tr>  <td align="right" > <h3>Withdrawal amount:</h3></td>
                          <td><input type="text"  onchange="this.value=format(this.value);" align="absmiddle" name="withdrawAmount" id="withdrawal" onMouseMove= "conWrite('withdrawal')" onKeyUp="conWrite('withdrawal')"  style=" width:100%;font-size:24px;"/></td></tr>                 
                     <tr id="1" style="display :none">  <td align="right"><h3> Authorization code:</h3></td>
                         <td><input type="text" id="suCode" name="ad_sucode" align="absmiddle" style=" width:100%;  font-size:24px;"/></tr>      
                    <tr>  <td> </td>
                        <td><input type="submit" value="Confirm" style=" font-size:16px;" /></td></tr>
               </table>
            </form>              
    	</div><!-- centercontent -->       
    </div><!--bodywrapper-->

</body>
</html>


