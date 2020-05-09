<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="topnav.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="topnav">
  <a href="HomePage.jsp">Home</a>
  <a href="foodDesign.jsp">Donate</a>
  <a href="Request.jsp">Request</a>
  <a href="Feedback.jsp">Feedback</a>
  <a href="ContactUs.jsp">Contact us</a> 
  <a href="sitemap.jsp">Site map</a>
  <a href="logout.jsp" style="float:right">
  <% 
  
  String data=(String)session.getAttribute("user");
  if(data!=null) {
    
     out.println("logout");
  }
  else
    out.println("Login/Sign up");
  %></a>
  </div>
</body>
</html>