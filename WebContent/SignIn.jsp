<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign in</title>
</head>
<body>

<%
	String db="root";
	String user="userinfo";
	String email=request.getParameter("Email");
	out.println(email);
	String password=request.getParameter("Password");
	try
	{
		boolean flag=false;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");	
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from userinfo");
		while(rs.next())
		{
			if(rs.getString(2).equals(email) &&rs.getString(4).equals(password))
			{out.println("Success!");
			session.setAttribute("user",email);
			out.println(session.getAttribute("user"));
			out.println("<script language='javascript'>window.alert('Logged in Successfully!');window.location='HomePage.jsp';</script>");

			flag=true;
			break;
			}
		
		}
		if(flag==false)
		{
			out.println("<script language='javascript'>window.alert('Invalid Username or password');window.location='SignInDesign.jsp';</script>");

		}
		else
		{
			
		}
	}
	catch(SQLException e)
	{
		out.println("Error");
	}
%>
</body>
</html>