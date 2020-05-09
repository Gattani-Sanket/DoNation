<!DOCTYPE HTML >
<html>
 <head>
 	<title>Feedback</title>
  	<link rel="stylesheet" type="text/css" href="Feedback.css">
  	
  	<script>
	  	function validateform(){ 
	  		var name= form.Name;  
			var email = form.Email;
		    var contact = form.Contact ;
		    
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
	  	}
  	
  	
  	</script>
  	
 </head>

 <body style="background-color:#f2f2f2">
 <%@include file="topnav.jsp" %>
  
	
	 <div class="form-box">
		<form method='post' class="Form" id="feedback-form" name="form" onsubmit="return validateform()">
		
		<h3>Enter your name:</h3>  
		<input type='text' name='Name' class="feedback-input" id='name' placeholder="Name" required/>
		
		<h3>Enter your email-id:</h3>
		<input type='text' name='Email' class="feedback-input" id='email' placeholder="Email" required/>
		 
		<h3>Enter your contact-no:</h3>  
		<input type='text' name='Contact' class="feedback-input" id='contact_no' placeholder="Contact No" required/>
	
		<div class="feedback-input">
			<h3>How was the user friendliness?</h3>
		    <input type="radio" name="UserFriend" value = "Intuitive" required>Intuitive &nbsp;
		    <input type="radio" name="UserFriend" value = "Clunky" required>Clunky &nbsp;
		</div>
		
		<div class="feedback-input">
		    <h3>How was your overall experience?</h3>
		    <input type="radio" name="Experience" value="Very Good" required>Very Good &nbsp;
		    <input type="radio" name="Experience" value="Good" required>Good &nbsp;
		    <input type="radio" name="Experience" value="Bad" required>Bad &nbsp;
		    <input type="radio" name="Experience" value="Very Bad" required>Very Bad &nbsp;
		</div>  
	  
	  	<div class="feedback-input">
		  	<h3>Would you recommend others to use this site??</h3>
		    <input type="radio" name="recommend" value = "Yes" required>Yes &nbsp;
		    <input type="radio" name="recommend" value = "No" required>No &nbsp;
	    </div>
	    
	    <h3>If you have any suggestions, please let us know:</h3>
	  	<textarea name='comment' id='comment' /></textarea><br />
	  	
	  	<input type='hidden' name='articleid' id='articleid' value='<? echo $_GET["id"]; ?>' />
		<br>
		<input type='submit' value='Submit' class="feedback-input" id='submit'/>
	
	</form>
</div>
 </body>
</html>



