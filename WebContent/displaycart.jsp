<%@page import="java.util.List"%>
<%@page import="org.ndt.entity.Cart"%>
<%@page import="org.ndt.entity.Book"%>

<%@page import="java.util.Vector"%>
<%@page import="java.text.NumberFormat"%>
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
width: 280px;
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
width: 300px;
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
<div id="login">
	<h1><strong>Welcome.</strong> Please Register.</h1>
<%--  <p align="right">Hi : <%=session.getAttribute("USER_NAME")%> --%>
	<p><a href="index.jsp"><input type="submit" value="Home"  align="right"></a></p>
<table border="0">
<tr><td><img src="C:\\Users\\USER\\Desktop\\cart.png"><td><h1>Shopping Cart</h1>
</table>

	
<%

Cart cart = (Cart) session.getAttribute("cart");

ServletContext sc = getServletConfig().getServletContext();
if(sc.getAttribute("cart") != null){
	List<Book> it = (List<Book>)sc.getAttribute("cart");
  // out.println(it);
   for(int i = 0; i< it.size(); i++){
       out.println(it.get(i).getPrice());
   }
}

else if(cart==null)
{
	cart=new Cart();
	session.setAttribute("Cart", cart);
	out.println("Cart is Empty");
}
List<Book> items = cart.getItems();


%>
<%-- Display the header for the shopping cart table --%>
<br>
	<form action="CartServlet" method="post" class=form>
<table border=4>
<tr><th>BookIsbn</th><th>BookTitle</th><th>Price</th></tr>
<%

       // int numItems = items.size();

        NumberFormat currency = NumberFormat.getCurrencyInstance();

       /*  for (int i=0; i < numItems; i++)
        { */
            for(Book item :items)
            {
            %>
           
            <td><%=item.getBook_Isbn()%></td>
        
           <td><%=item.getBook_Title() %> </td>
            
            <td><%=currency.format(item.getPrice()) %></td>

        
            	<td><input type="submit" value="REMOVE"></td>
		     </tr>

     		<input type="hidden" name="ACTION" value="remove"/>
     			<input type="hidden" name="hdnid" value="<%=item.getBook_Isbn()%>"/>

                
            
     <%}
%>
</table></form>
<form action="CartServlet" method="post" class=form1>
	    	<a href='http://localhost:8080/OnlineBookStore/index.jsp'>Select More Books...</a>
	   		<input type="submit"  value="ORDER" /> 
	   		<input type="hidden" name="ACTION" value="order"/>
	   		
	</form>  
	
	</div>   
</body>
</html>