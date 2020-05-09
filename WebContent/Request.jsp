<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Food</title>
<style>
table
{
margin:auto;
width:100%;
}
th {
  background-color:#4CAF50;
  color: white;
  height:30px;
  padding:15px;
}
td {
	text-align:center;
	padding:15px;
	}
tr:hover {background-color: #f5f5f5;}

input[type=submit] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin:2px 42%;
  cursor: pointer;
</style>
</head>
<body>
<%@include file="topnav.jsp" %>
 
<%
String data1=(String)session.getAttribute("user");
if(data1!=null) {	
}
else
{
response.sendRedirect("SignInDesign.jsp");	
}
%>
<img src="logo.png" height=150px;width=150px;align:center>
<hr>
<form action="RequestConfirm.jsp" method="post">
<table>
<tr>
<th>Type</th>
<th>item</th>
<th>quantity</th>
<th>Unit</th>
<th>Request</th>
</tr>
<%
	String db="root";
	String user="donationbox";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");	
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from "+user);
		while(rs.next())
		{
			out.println("<tr><td>"+rs.getString(2) +"</td>"+"<td>"+rs.getString(3) +"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getString(5) +"</td>"+"<td>"+"<input type=text name=food></td>");
		}
	}
	catch(SQLException e)
	{
		out.println("Error");
	}
%>
</table>
<input type=submit value="Request">
</form>
</body>
</html>