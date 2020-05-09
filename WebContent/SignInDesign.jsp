<!DOCTYPE HTML >
<html>
 <head>
 	<title>SignIn</title>
  	<link rel="stylesheet" type="text/css" href="SignIn.css">
 
  	<script>
	  	function validateform(){ 
	  		  
			var email = form.Email;
		    var email_re = /^[a-zA-Z0-9.-_]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,4}$/;
	        var check_email = email_re.test(email.value);
	        
	        
	        if(!check_email)// && check_phone)
	        {
	            alert("Enter Valid Email Address!");
	            return false;
	        }
	        
	  	}
  	
  	
  	</script>
  	
 </head>

 <body style="background-color:#f2f2f2">
 	
 	<%@include file="topnav.jsp" %>
  <img src="logo.png" height=150px width=150px>
<hr> 
 	
	<h2 class= "heading"; align="center"><b>Sign In</b></h2>
	
	 <div class="form-box">
		<form method='post' action="SignIn.jsp" class="Form" id="feedback-form" name="form" onsubmit="return validateform()">
		
		<h3>Enter your email-id:</h3>
		<input type='text' name='Email' class="feedback-input" id='email' placeholder="Email" required/>
		 
	
		<h3>Enter Password:</h3>  
		<input type='password' name='Password' class="feedback-input" id='password' placeholder="Password" required/>
	  	
	  	<br><br>
	  	<a href="SignUpDesign.jsp">Not user? Register Here</a>		
	  	<br>
	  	<input type='hidden' name='articleid' id='articleid' value='<? echo $_GET["id"]; ?>' />
		<br>
		<input type='submit' value='Submit' class="feedback-input" id='submit'/>
	
	</form>
</div>
 </body>
</html>



