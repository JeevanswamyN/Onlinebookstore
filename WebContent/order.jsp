<%@page import="java.util.List"%>
<%@page import="org.ndt.entity.Cart"%>
<%@page import="org.ndt.entity.User"%>
<%@page import="org.ndt.entity.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 <p align="left">Hi : <%=session.getAttribute("NAME")%></p>
 <a href=""></a>
<%User user=(User)request.getAttribute("USER");
  
	Cart cart= (Cart)session.getAttribute("cart");
	
	
	if(cart==null)
	{
		cart=new Cart();
		session.setAttribute("Cart", cart);
		
	}
	else if(cart!=null)
	 {
		 List<Book> items = cart.getItems();
	 
	
	int totalPrice=0;
	String username=null;
%>
	<form action="LogoutServlet" method="post">
	
		<input type="submit" value="Logout" >
	</form> 
	
	<form action="OrderServlet" method="post" class=form>
		
		<table border="1" width="300px">
		<caption><h4><p>USER_DETAILS</p></h4></caption>
			<thead>
				<tr>
					<td>USER NAME</td>
					<td>CITY</td>
					<td>STATE</td>
				</tr>
				<tr>
					<td><%=username=user.getUserName() %></td>
					<td><%=user.getCity() %></td>
					<td><%=user.getState() %></td>
				</tr>
		</table>
		<table border="1" width="300px">
		<caption><h4><p>ITEM_DETAILS</p></h4></caption>
		<thead>
			<tr>
				<td>Title</td>
				<td>Price</td>
			</tr>
		</thead>
			 <%
			 //if(item!=null)
			 for (Book item : items) 
			 {		
			%>
			
			<tr>
				<td><%=item.getBook_Title() %></td>
				<td><%=item.getPrice()%></td>
				<%   
					totalPrice+=item.getPrice();
				%>
			</tr>
			<%
			 }
			%> 
			<tr>
				<td>Total Price</td>
				<td><%=totalPrice %></td>
			</tr>
			<tr>
				<td><input type="submit" value="Confirm Order" >
				<!-- <td><a href="http://localhost:8080/OnlineBookStore/thankyou.jsp">Next</a></td> -->
			</tr>	
		</table>
			
			<input type="hidden" name="username" value="<%=username%>">
			<input type="hidden" name="totalAmt" value="<%=totalPrice%>">
	</form> 
	<%} %>

</body>
</html>