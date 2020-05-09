<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Food</title>

</head>
<body>

<%
	String db="root";
	String user="userinfo";
	String name = request.getParameter("Name");
	String password = request.getParameter("Password");
	String contact = request.getParameter("Contact");
	String email=request.getParameter("Email");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");	
		Statement stmt=con.createStatement();
		String a="insert into "+user+" values ('"+ name+"','"+email+"','"+ contact +"','"+password+"')";
		out.println(a);
		stmt.executeUpdate(a);
		out.println("<script language='javascript'>window.alert('Registered Successfully!');window.location='SignInDesign.jsp';</script>");

	}
	catch(SQLException e)
	{
		out.println("<script language='javascript'>window.alert('User Already Exist');window.location='SignUpDesign.jsp';</script>");

	}
%>

</body>
</html>