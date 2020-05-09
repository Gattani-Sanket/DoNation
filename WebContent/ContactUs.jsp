<!DOCTYPE html>
<html>
<head>
<title>Contact us</title>
<link rel="stylesheet" type="text/css" href="ContactUs.css"> 
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
<body>
<%@include file="topnav.jsp"%>
<img src="logo.png" height=150px width=150px>
<hr> 
<div class="container">
  <div style="text-align:center">
    <h2>Contact Us</h2>
    <p>Donate us or work with with us, for more details contact us:</p>
    <p>Feel free to ask us a query</p>
  </div>
  <div class="row">
    <div class="column">
      <img src="Contact.jpg" style="width:100%">
    </div>
    <div class="column">
      <form name="form" action="Mailsend.jsp" onsubmit="return validateform()">
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="firstname" placeholder="Your name..">
        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">
        <label for="mail">Email Id</label>
        <input type="text" id="Email" name="Email" placeholder="Your email id..."> 
        <label for="subject">Subject</label>
        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
        <input type="submit" value="Submit">
  
  
      </form>
    </div>
  </div>
</div>
	
  	
</body>
</html>