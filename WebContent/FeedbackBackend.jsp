<%@page import="javafx.scene.control.Alert"%>
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
String name=request.getParameter("Name");
String email=request.getParameter("Email");
String mob=request.getParameter("Contact");
String unfriend=request.getParameter("UserFriend");
String exp=request.getParameter("Experience");
String rec=request.getParameter("recommend");
String comment=request.getParameter("comment");
String sql ="insert into feedback(name,mail,mob,friend,exp,rec,comment)values('"+name+"','"+email+"','"+mob+"','"+unfriend+"','"+exp+"','"+rec+"','"+comment+"')";
statement.executeUpdate(sql);

} 
catch (Exception e) {
e.printStackTrace();
}
out.println("<script language='javascript'>window.alert('Thank you!');window.location='HomePage.jsp';</script>");

%>
