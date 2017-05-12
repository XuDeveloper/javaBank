
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/header.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s" %>

<script type="text/javascript">
            $(document).ready(function(e) {
            $('a#confirm').click(function() {      
               if( $("#text").val()==''){
                    modal({                        
                   type: 'confirm',
                   title: 'Confirm',
                   text: '<h4>The banlance is empty,Are you sure you want to delete your account?</h4>',
                   callback: function(result) {
                      if(result==false){                    	 
                      }
                      else{
                    	  window.open('main.jsp','_self') 
                      }
                   }
                 });
                 }
               else{
                   modal({
               type: 'alert',
               title: 'Confirm',
               text: '<h4> account has outstanding balance '+ $("#text").val()+'<p> you cannot delete</h4>'
           });                                  
      }
     
    });
});

</script>

<div class="header">
	<ul class="headermenu">
		<li><a href="${pageContext.request.contextPath}/Admin/main.jsp"><span
				class="icon icon-flatscreen"></span>Mainpage</a></li>
		<li><a
			href="${pageContext.request.contextPath}/Admin/opening.jsp"><span
				class="icon icon-pencil"></span>Opening</a></li>
		<li class="current"><a
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
	
        <form action="main.jsp" method="post">
        	<center>
               <font size="5" color="red">Success!</font>
            </center>
             <table id="2"  cellpadding="20px"
				cellspacing="12" width=60%  height=90%>  
               <tr>   <td align="right"> <h4> Saving account number:</h4></td>
                    <td align="left"> <text
						id="accountNum" align="absmiddle" height="60px" width="20px">
						<s:property value="#request.search_customer.accountNum"/>
						</text> </td>
				</tr>
                 <tr>     <td align="right"><h4> Card number:</h4></td>
                           <td align="left"><text
						id="cardNum" align="absmiddle">  
						<s:property value="#request.search_customer.cardNum"/>
						</text></td> </tr>
                 <tr>     <td align="right"><h4> Customer Name:</h4></td>
                           <td align="left"><text
						id="custname" align="absmiddle">
						<s:property value="#request.search_customer.cu_name"/>
						</text>  </td> </tr>
						
                 <tr>     <td align="right"><h4> Banlance:</h4></td>
                           <td align="left"><input type="text" id="text" value=""/>  </td> </tr>
												
                 <tr>     <td align="right"><h4>Online Banking Account Status:</h4></td>
                           <td align="left"><text
						id="status" align="absmiddle">
						<s:property value="#request.search_customer.accountStatus"/>
						</text>  </td> </tr>
						
                 <tr>    <td align="right"> <a href="#" id="confirm"><input type="button" value="close" size="80"
						 style="background-color: #32415a; border-radius: 3px; width: 70px; margin: 0px auto; border: none; height: 30px; color: #fff;"/></a></td> 
                          <td align="left"><input type="button" value="Return" size="80"
						style="background-color: #32415a; border-radius: 3px; width: 70px; margin: 0px auto; border: none; height: 30px; color: #fff;"
						onClick="window.open('main.jsp','_self')" /></td>
				</tr>
            </table>
           </form>
	</div>
	<!-- centercontent -->  
    </div><!--bodywrapper-->
</body>
</html>