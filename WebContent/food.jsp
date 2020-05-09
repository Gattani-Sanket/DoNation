<%-- 
    Document   : food
    Created on : 13 Apr, 2020, 11:03:24 PM
    Author     : gatta
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "test";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();

String[] item=request.getParameter("hiditem").split(" ");
String[] quant=request.getParameter("hidquant").split(" ");
String[] dtype=request.getParameter("hiddtype").split(" ");
String[] iunit=request.getParameter("hidunit").split(" ");
Random rand = new Random(); 
  
        // Generate random integers in range 0 to 999 
        int rand_int1 = rand.nextInt(100000); 
String name=request.getParameter("sname");
String mob=request.getParameter("smob");
String addr=request.getParameter("saddr");
String sql ="insert into contactdetails values('"+rand_int1+"','"+name+"','"+mob+"','"+addr+"')";
statement.executeUpdate(sql);

for(int i=0;i<item.length;i++)
{
sql ="insert into donationbox values('"+rand_int1+"','"+dtype[i]+"','"+item[i]+"','"+quant[i]+"','"+iunit[i]+"')";
statement.executeUpdate(sql);
}

} 
catch (Exception e) {
e.printStackTrace();
}
%>

