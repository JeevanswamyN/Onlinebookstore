<%@page import="org.ndt.entity.OrderTable"%>
<%@page import="java.util.List"%>
<%@page import="org.ndt.entity.Cart"%>
<%@page import="org.ndt.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {
 background:  url(Book-And-Tea-Cup.jpg);
   background-size: 100% ;
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 300px;
}
form fieldset input[type="text"], input[type="password"] {
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 268px;
-webkit-appearance:none;
}
form fieldset input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 288px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}
.facebook-before {
background-color: #0064ab;
border-radius: 3px 0px 0px 3px;
-moz-border-radius: 3px 0px 0px 3px;
-webkit-border-radius: 3px 0px 0px 3px;
color: #f4f4f4;
display: block;
float: left;
height: 50px;
line-height: 50px;
text-align: center;
width: 50px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String name=(String)session.getAttribute("NAME");
String mess=(String)request.getAttribute("MESSAGE");
System.out.println("name:"+name);%>
	<h4><p>Thank you for shopping ....</p></h4>
	<%if(mess!=null){ %>
    <h4><p><%=mess%></p></h4>   
	<%}
	
	
	%>
		 <p align="right"><a href="index.jsp"><input type="button" value="Home" ></a></p>
		<a href="index.jsp"><input type="button" value="Continue shopping" ></a>
		<form action="OrderHistory" method="post">
		
		<input type="hidden" name="hdnusername" value="<%=name%>">
		<input type="submit" value="orderhistory" >
	</form> 
		
		<%--	 <table border="1" align="center">
				
				<tr>
				<th>BookIsbn</th>
				<th>BookTitle</th>
				<th>Book No of books</th>
				<th>AuthorName</th>
				<th>Price</th>
				</tr>
				 <c:forEach items="${USERLIST}" var="list">	
				 <TR>
				 <td> ${list.username}</td>
				 <td></td>
				 </TR>
				 </c:forEach>
		<%if(oList!=null)
		{
		for(OrderTable b:oList) 
		{ %>
		
				<tr>
				<td><%= b.getTotalamt()%></td>
				<td><%= b.getUsername()%></td>
				<td><%= b.getOrderItem().getBookIsbn()%></td>
				<td><%= b.getOrderItem().getBookprice()%></td>
				<td><%= b.getOrderItem().getBookTitle() %></td>
				<%}} %> --%>
</body>
</html>