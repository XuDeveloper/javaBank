 <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:include page="../Public/adminHeader.jsp"></jsp:include>
    <div class="header">
    	<ul class="headermenu">
            <li ><a href="${pageContext.request.contextPath}/Admin/main.jsp"><span class="icon icon-flatscreen"></span>Mainpage</a></li>
             <li ><a href="${pageContext.request.contextPath}/Admin/opening.jsp"><span class="icon icon-pencil"></span>Opening</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/inquiry.jsp"><span class="icon icon-speech"></span>Inquiry</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/deposit.jsp"><span class="icon icon-message"></span>Deposit</a></li>
            <li><a href="${pageContext.request.contextPath}/Admin/withdrawal.jsp"><span class="icon icon-chart"></span>Withdrawal</a></li>
            <li class="current"><a href="${pageContext.request.contextPath}/Admin/changepin.jsp"><span class="icon icon-pin"></span>Change PIN</a></li>            
        </ul>    
    </div>
 <script type="text/javascript">      
		$(document).ready(function(e) {     	
		  $('a#confirm').click(function() {  				  
			  if($("#ID").val().length!=22){
				    modal({
		              type: 'alert',
		              title: 'Warning',
		             text: ' <h3>&nbsp;The Identity ID number must have 18 numbers! </h3>'
		       });      
			  }	
			  
			  else  if($("#old").val()==""||$("#old").val()==null){
				    modal({
		              type: 'alert',
		              title: 'Warning',
		             text: '<h4>   The old PIN cannot be empty</h4>'
		       });      
			  }	
			  
			  else   if($("#new").val().length!=6){
				    modal({
		              type: 'alert',
		              title: 'Warning',
		             text: '<h3>The new PIN must have only 6 numbers!</h3>'
		       });      
			  }	
			  
			  else    if($("#new").val()!=$("#new1").val()){
				    modal({
		              type: 'alert',
		              title: 'Warning',
		             text: '<h3>The two PIN should be the same!</h3>'
		       });      
			  }	
			  else{
				  modal({
		              type: 'alert',
		              title: 'Warning',
		             text: '<h3>Change sucessfully!!</h3>',
		            	 callback: function(result) {
		                    	  window.open('main.jsp','_self') 		                       
		                    }
		       });      
			  }  
		});
		}); 
		
		
		  window.onload =function() {  
	            document.getElementById("cardNum").onkeyup =function() {  
	                this.value =this.value.replace(/\s/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");;  
	            };  
	             document.getElementById("ID").onkeyup =function() {  
	                this.value =this.value.replace(/\s/g,'').replace(/(\d{4})(?=\d)/g,"$1 ");;  
	            }; 
	            
	        };  
	        
		
     </script>
    		
    <div class="centercontent"> 
         <div id="contentwrapper" class="contentwrapper">
   <form action="DepositAction" method="post">
                    <p></p>
                 <table cellpadding="16px" cellspacing="16" width=60% height=10%>       
                <tr ><td align="right"><h3> User Card Number:</h3> </td>
       				  <td ><input type="text" id="cardNum" align="absmiddle" style=" width:100%;  font-size:24px;"/></td></tr>
       			  <tr>  <td align="right"><h3> Identity ID number:</h3></td>
 						<td><input type="text"  align="absmiddle"  id="ID" style=" width:100%;  font-size:24px;" /></td></tr>                 
 			    <tr>  <td align="right"><h3>  Old PIN:</h3></td>
 						<td><input type="text"  align="absmiddle"  id="old" style=" width:100%;  font-size:24px;"/></td></tr>   
 				<tr>  <td align="right"><h3>  New PIN:</h3></td>
 						<td ><input type="text"  align="absmiddle"  id="new" style=" width:100%;  font-size:24px;" /></td></tr>   
 						
 				 <tr>  <td align="right"><h3> Confirm New PIN:</h3></td>
 						<td><input type="text"  align="absmiddle"  id="new1" style=" width:100%;  font-size:24px;"/></td></tr>   
                 <tr >  <td align="right"><h3>Authorization Code:</h3></td>
                         <td><input type="text" id="suCode" align="absmiddle" name="ad_sucode" style=" width:100%;  font-size:24px;" /></tr>                
                     <tr>  <td> </td>
                         <td><a href="#" id="confirm"><input type="button" value="Confirm"  style="background-color: #32415a; color: #fff; font-size:24px;"/></a></td></tr>
                        
                 </table>
                </form>                           
        </div>  
    </div><!--bodywrapper-->
</body>
</html>