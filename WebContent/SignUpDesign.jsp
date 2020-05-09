<!DOCTYPE HTML >
<html>
 <head>
 	<title>SignUp</title>
  	<link rel="stylesheet" type="text/css" href="SignUp.css">
  	
  	<script>
	  	function validateform(){ 
	  		var name= form.Name;  
			var email = form.Email;
		    var contact = form.Contact ;
		    
		    var password1 = form.Password ;
		    var password2 = form.Cpassword ;
		    
		    var name_re = /^[a-zA-Z ]{2,30}$/; ;
	        var check_name = name_re.test(name.value);
	  		
		    var email_re = /^[a-zA-Z0-9.-_]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,4}$/;
	        var check_email = email_re.test(email.value);
	        
	        var contact_re = /^\d{10}$/
	        var check_contact = contact_re.test(contact.value);
	        	
	        
	        if(!check_name)// && check_phone)
	        {
	            alert("Enter Valid Name!");
	            return false;
	        }
	        if(!check_email)// && check_phone)
	        {
	            alert("Enter Valid Email Address!");
	            return false;
	        }
	        if(!check_contact)// && check_phone)
	        {
	            alert("Enter Valid Contact No");
	            return false;
	        }
	        
	        if (password1.value != password2.value) { 
                alert ("\nPassword did not match: Please try again...") 
                return false; 
            } 
	        else{  
                return true; 
            } 
	  	}
  	
  	
  	</script>
  	
 </head>

 <body style="background-color:#f2f2f2">
 	<%@include file="topnav.jsp" %>
  <img src="logo.png" height=150px width=150px>
<hr> 
 
 	
	<h2 class= "heading" align="center"><b>Sign Up</b></h2>
	
	 <div class="form-box">
		<form method="post" action="SignUp.jsp" class="Form" id="feedback-form" name="form" onsubmit="return validateform()">
		
		<h3>Enter your name:</h3>  
		<input type='text' name='Name' class="feedback-input" id='name' placeholder="Name" required/>
		
		<h3>Enter your email-id:</h3>
		<input type='text' name='Email' class="feedback-input" id='email' placeholder="Email" required/>
		 
		<h3>Enter your contact-no:</h3>  
		<input type='text' name='Contact' class="feedback-input" id='contact_no' placeholder="Contact No" required/>
	
		<h3>Enter Password:</h3>  
		<input type='password' name='Password' class="feedback-input" id='password' placeholder="Password" required/>
	  	
	  	<h3>Confirm Password:</h3>  
		<input type='password' name='Cpassword' class="feedback-input" id='cpassword' placeholder="Confirm Password" required/>
		
		<br><br><br>
		<input type="checkbox" class="check-box" required><span>I agree to the terms & conditions.</span>
		
	  	<br>
	  	<input type='hidden' name='articleid' id='articleid' value='<? echo $_GET["id"]; ?>' />
		<br>
		<input type='submit' value='Submit' class="feedback-input" id='submit'/>
	
	</form>
</div>
 </body>
</html>



