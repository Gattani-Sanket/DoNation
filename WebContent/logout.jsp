<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%  
String data=(String)session.getAttribute("user");
System.out.println("data:--LO--"+data);
if(data!=null) {
	session.setAttribute("user", null);
  session.invalidate();
  out.println("<script language='javascript'>window.alert('Logged Out Successfully!');window.location='HomePage.jsp';</script>");
}

else
{
response.sendRedirect("SignInDesign.jsp");	
}
%>