<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%
   String result;
   
   // Recipient's email ID needs to be mentioned.
   String to = "pratik261199@gmail.com";
	String mailid=request.getParameter("Email");
	String subject=request.getParameter("subject");

   // Sender's email ID needs to be mentioned
   String from = mailid;

   // Assuming you are sending email from localhost
   String host = "localhost:7147";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);

   // Get the default Session object.
   Session mailSession = Session.getDefaultInstance(properties);

   try {
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("Contact Us");
      
      // Now set the actual message
      message.setText(subject);
      
      // Send message
      Transport.send(message);
      out.println("<script language='javascript'>window.alert('We Will contact you soon!');window.location='HomePage.jsp';</script>");

   } catch (MessagingException mex) {
      mex.printStackTrace();
      System.out.println(mex);
      out.println("<script language='javascript'>window.alert('Submitted Successfully');window.location='HomePage.jsp';</script>");

   }
%>

