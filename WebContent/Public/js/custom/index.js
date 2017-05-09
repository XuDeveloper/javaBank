jQuery(document).ready(function(){
								
	///// TRANSFORM CHECKBOX /////							
	jQuery('input:checkbox').uniform();
	
	///// LOGIN FORM SUBMIT /////
	jQuery('#login').submit(function(){
            
             if(jQuery('#username').val() == '' && jQuery('#password').val() == '') {
			jQuery('.nopassword').hide();
			jQuery('.nousername').fadeIn();
			return false;
		      }
                if(jQuery('#username').val() == 'username' && jQuery('#password').val() == 'password') {
			jQuery('.nopassword').hide();
			jQuery('.nousername').fadeIn();
			return false;
		      }

                        if(jQuery('#username').val() != '' && jQuery('#password').val() == '') {
			jQuery('.nopassword').fadeIn();
			jQuery('.nousername').hide();
			return false;
		      }
                if(jQuery('#username').val() != '' && jQuery('#password').val() == 'password') {
			jQuery('.nopassword').fadeIn();
			jQuery('.nousername').hide();
			return false;
		      }
                 
             
            
		if(jQuery('#username').val() == '' ||jQuery('#password').val() == ''|| jQuery('#mail').val() == ''||jQuery('#phone').val() == '') {
			jQuery('.nopassword').hide();
                        jQuery('.nousername').fadeIn();  
			return false;	
		}
                if(jQuery('#username').val() == 'username'|| jQuery('#password').val() == 'password'|| jQuery('#mail').val() == 'mail'||jQuery('#phone').val() == 'phone') {
		jQuery('.nopassword').hide();
                    jQuery('.nousername').fadeIn();	          
			return false;	
		}        
                
	});
	
	///// ADD PLACEHOLDER /////
	jQuery('#username').attr('placeholder','Username');
	jQuery('#password').attr('placeholder','Password');
});
