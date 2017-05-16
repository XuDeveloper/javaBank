
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Public/adminHeader.jsp"></jsp:include>
<%@ taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript">
function cl() {  
            	var t=$("table tr:eq(3) td:eq(1)").text();
                if( t==0){
                    modal({                        
                    type: 'confirm',
                    title: 'Confirm',
                    text: '<h4>The banlance is empty,Are you sure you want to delete your account?</h4>',
                    callback: function(result) {
                       if(result==false){                    	 
                       }
                       
                       else{
                    	   var a=$("table tr:eq(2) td:eq(1)").text();                    	    
                    	    var b=a.replace(/(^\s+)|(\s+$)/g,"");
                            var c=b.replace(/\s/g,"");
                            
                            
                            $.ajax({  
          	                  type: "post",  
          	                  url: "CloseAccountAction_close",  
          	                  data:{
          	                      cardNum:c          	                      
          	                      //把没钱的卡号关闭掉
          	                      //这里不要加","  不然会报错，而且根本不会提示错误地方
          	                  },          	                  
          	                  async: false,            	                  
          	                  error: function(request) {  
          	                      alert("Connection error");  
          	                  },            	                  
          	                  success: function(data) {
          	                	  if(data == "success") {
          	                		  
          	                		  modal({
          	        		              type: 'alert',
          	        		              title: 'Remind',
          	        		             text: '<h3>Close sucessfully!!</h3>',
          	        		             callback: function(result) {
          	        		                 window.open('main.jsp','_self') 		                       
          	        		                  }
          	        		       });
          	                		  
          	                	  }
          	                	  else if(data == "not customer"){
          	                		  alert("Fail!The account doesn't exist");
          	                	  }
          	                  }  
          	              });  
                                                        
                          }
                    } }); 
                    
                }
                  else{
                    modal({
                    type: 'alert',
                    title: 'Confirm',
                     text: '<h4> This account has outstanding balance '+t+'<p> you cannot delete</h4>'
           });                                  
      }
     
    }      

</script>



<div class="header" >
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
				
		 <li><a href="${pageContext.request.contextPath}/Admin/changepin.jsp"><span class="icon icon-pin"></span>Change PIN</a></li> 
	</ul>
</div>
<!--header-->

<div class="centercontent">
<br>

      <center>
         <font size="5" color="red">Inquiry Success!</font>
            </center>
        <form action="" method="post"> 
                
             <table cellpadding="20px" cellspacing="20" width=65% height=10%>
                 <tr>     <td align="right"><h3> Customer Name:</h3></td>
                           <td align="left"  style="font-size:24px" ><s:property value="#request.search_customer.cu_name"/>	 </td> </tr>
						
               <tr>   <td align="right"> <h3> Account number:</h3></td>
                    <td align="left" id="accountNum"  style="font-size:24px"><s:property value="#request.search_customer.accountNum"/> </td>
				</tr>
								
                 <tr>     <td align="right"><h3> Card number:</h3></td>
                           <td align="left" id="cardNum"   style="font-size:24px"><s:property value="#request.search_customer.cardNum"/></td> </tr>

						
                 <tr > <td align="right" ><h3> Banlance:</h3></td>
                           <td align="left"  id="balance"  style="font-size:24px">	<s:property value="#request.search_customer.balance"/> </td> </tr>
												
                 <tr>     <td align="right"><h3>Banking Account Status:</h3></td>
                           <td align="left"  style="font-size:24px">	<s:property value="#request.search_customer.accountStatus"/>
						 </td> </tr>
						
                 <tr>    <td align="right"> <input type="button" onClick="cl()" value="close" size="80"
						 style="background-color: #32415a; border-radius: 3px; width: 70px; margin: 0px auto; border: none; height: 30px; color: #fff; font-size:20px;"/></td> 
                          <td align="left"><input type="button" value="Return" size="80"
						style="background-color: #32415a; border-radius: 3px; width: 70px; margin: 0px auto; border: none; height: 30px; color: #fff;font-size:20px;"
						onClick="window.open('main.jsp','_self')" /></td>
				</tr>
            </table>
            
           </form>
	</div>

    </div>

 <script >
 window.onload =function() {        
         var td1 = document.getElementById("balance").innerHTML;            
         var a=parseInt(td1);        
         var str1=(a+".00").split('').reverse().join('').replace(/(\d{3})/g,'$1,').replace(/\,$/,'').split('').reverse().join('');        
         document.getElementById("balance").innerHTML=str1;
         
         var td2 = document.getElementById("accountNum").innerHTML;                  
         var str2=td2.replace(/(\d{4})/g,'$1 ').replace(/\s*$/,'');        
         document.getElementById("accountNum").innerHTML=str2;         
         
         var td3 = document.getElementById("cardNum").innerHTML;                  
         var str3=td3.replace(/(\d{4})/g,'$1 ').replace(/\s*$/,'');        
         document.getElementById("cardNum").innerHTML=str3;  
  };  

 </script>   

</body>
</html>