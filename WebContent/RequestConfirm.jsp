<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request Confirmation</title>
</head>
<body>

<%
	String db="root";
	String user="donationbox";
	String email=request.getParameter("Email");
	String []food=request.getParameterValues("food");

	int size=food.length;

	for(String i:food)
	{	if(i.equals(""))
	{
		i="0";
	}
	}
	
	int []foodreq=new int[size];
	for(int i=0;i<size;i++)
	{	try{
		foodreq[i]=Integer.parseInt(food[i]);
	}
	catch(Exception e)
	{
		foodreq[i]=0;
	}
	
	}
	
	String password=request.getParameter("Password");
	try
	{
		boolean flag=false;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");	
		Statement stmt=con.createStatement( ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		ResultSet rs=stmt.executeQuery("select * from "+user);
		int i=0;
		while(rs.next())
		{
			if(rs.getInt(4)<foodreq[i])
			{
				
				out.println("<script language='javascript'>window.alert('Request Exceeded');window.location='Request.jsp';</script>");
				return;
			}
			i++;
		}
		rs.beforeFirst();
		i=0;
		while(rs.next())
		{
			
			//String query="Update donationbox set qty = "+(rs.getInt(4)-foodreq[i])+" where foodtype = '"+rs.getString(1)+"'";
			int temp= rs.getInt(4)-foodreq[i];
			if(temp==0)
			{rs.deleteRow();}
			else
			{
			rs.updateInt("quant",(temp));
			rs.updateRow();
			}
			//System.out.println(query);
			i++;
		}
	
		out.println("<script language='javascript'>window.alert('Your request has been placed');window.location='HomePage.jsp';</script>");

	
	}
	catch(SQLException e)
	{
		System.out.println(e);
	}
%>
</body>
</html>