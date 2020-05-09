<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Do.Nation</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
  }
  
body {
  margin: 0;
}
.column 
{
float:left;
padding:10px;
}
.left , .right
{
width:25%;
}
.middle
{
width:50%;
}
.row:after
{
content:"";
display:table;
clear:both;
}
.circle {
  width: 100px;
  height: 100px;
  border-radius:50%;
  font-size: 20px;
  line-height: 100px;
  text-align: center;
  background:#ff8100;
  margin:auto;
  	
}
.circle2{
  width: 100px;
  height: 100px;
  border-radius: 50%;
  font-size: 15px;
  line-height: 100px;
  text-align: center;
  background:gray;
  margin:auto;	
}

a
{
color:white;
}
a:hover
{
color:black;
}
.circle {
font-weight:bold
color:Pink;
}
.slideshow
{
position:relative;
margin:auto;
background-color:#f1f1f1;
}
/* Style the header */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}

/* Style the top navigation bar */

.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 20px;
  width: 100%;
  text-align: center;
  font-weight:bold;
}
.text2 {
  color: #000000;
  font-size: 20px;
  position: absolute;
  width: 100%;
  text-align: center;
  font-weight:bold;
  background-color:#f2f2f2;
}



      .row.content {
      height:auto;
      				} 
</style>
</head>
<body>


<%@include file="topnav.jsp" %>
  
  <div class="slideshow">
<div class="header">
 <img src="th.jpg" alt="DO.NATION" height=300px width= 100%>
 <div class=text>caption</div>

</div>

<div class="container-fluid text-center">
<div class="row">
<div class="column left">
<img src="logo.png" height=150px width=150px>
</div>
<div class="column middle"  >
 <h1>Introduction</h1>
      <p><span id="intro"></span><hr> 
  <div class="column middle">
      <div class="circle text-center" >
      <a href="foodDesign.jsp">Donate</a>
    	</div>
</div>
 <div class="column middle">
      <div class="circle2 text-center">
      <a href="Request.jsp">Request</a>
    	</div>
</div>

</div>
<div class="column right">
<table style="margin:auto">
<tr>
<th><h1><span id="tablehead"></span></h1></th>
</tr>
<tr>
<td><h4><span id="name1"></span></h4></td>
</tr>
<tr>
<td><h4><span id="name2"></span></h4></td>
</tr>
<tr>
<td><h4><span id="name3"></span></h4></td>
</tr>

</table>
</div>
</div>
</div>
</div>
<div class="topnav">

<a href="#">Visitors Count: <%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
           
            hitsCount = 1;
         } else {
            /* return visit */
 
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
         out.println(hitsCount);
      %></a>
</div>


<script>
if(window.XMLHttpRequest)
	{
xmlhttp=new XMLHttpRequest();
	}
xmlhttp.open("GET","data.xml",false);
xmlhttp.send();
xmlDoc=xmlhttp.responseXML;

document.getElementById("intro").innerHTML=xmlDoc.getElementsByTagName("intro")[0].childNodes[0].nodeValue;
document.getElementById("tablehead").innerHTML=xmlDoc.getElementsByTagName("tablehead")[0].childNodes[0].nodeValue;
document.getElementById("name1").innerHTML=xmlDoc.getElementsByTagName("name1")[0].childNodes[0].nodeValue;
document.getElementById("name2").innerHTML=xmlDoc.getElementsByTagName("name2")[0].childNodes[0].nodeValue;
document.getElementById("name3").innerHTML=xmlDoc.getElementsByTagName("name3")[0].childNodes[0].nodeValue;
</script>
</body>
</html>
