<%@page import="org.ndt.entity.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<style>
body {
    background-color: FF9900;
    background:  url(Book-And-Tea-Cup.jpg);
      background-size: 100% 5;
}
h1 {
    background-color: #FF9900;
}

p {
    background-color: #FFFFCC;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<h1 align="center">Online Book Shop</h1>
			<% List<Book> list=(List<Book>)request.getAttribute("USERLIST");
			String msg=(String) request.getAttribute("MESSAGE");
			
			if(msg!=null)
			{
			%>
			<p><%= msg %>
			</p><%} %>
	
	
	 <%-- Hi : <%=session.getAttribute("USER_NAME")%> --%>
	<p align="right"><a href="index.jsp"><input type="button" value="Home" ></a>
	
	<form action="BookServlet" method="post">
	
		 <input type="text" name=bookTitle placeholder="Enter the book Ttle" required="required">
	 	 <input type="submit" value="search"></p>
	 	 <table border="1" align="center">
				
				<tr>
				<td>BookIsbn</td>
				<td>BookTitle</td>
				<td>Book No of books</td>
				<td>AuthorName</td>
				<td>Price</td>
				</tr>
				
				<%
				if(list!=null)
				{
				for(Book b:list) 
				{
					if(b.getBook_Title().equals("copps"))
					{%>
						<a href="BookServlet?bookTitle=copps">
						<img alt="Java" src="cproo.jpg" height="160px" width="160px" border="2px">
						</a>
					<% }
					else if(b.getBook_Title().equals("henrik"))
					{%>
						<a href="BookServlet?bookTitle=henrik">
						<img alt="Java" src="Java_All_in_One.png" height="200px" width="200px" border="2px">
						</a>
					<%} 
					else if(b.getBook_Title().equals("java"))
					{%>
						<a href="BookServlet?bookTitle=java">
						<img alt="Java" src="javaforandroid.jpg" height="200px" width="200px" border="2px">
						</a>
					<%} 
				    else if(b.getBook_Title().equals("javac"))
					{%>
						<a href="BookServlet?bookTitle=javac">
						<img alt="Java" src="JavaScriptRegularExpressions.png" height="200px" width="200px" border="2px">
						</a>
					<%} %>
			
			
				
				<tr>
				<td><%= b.getBook_Isbn()%></td>
				<td><%= b.getBook_Title()%></td>
				<td><%= b.getNo_of_Books()%></td>
				<td><%= b.getAuthor().getAuthorName()%></td>
				<td><%= b.getPrice() %></td>
				<td><a href="http://localhost:8080/OnlineBookStore/CartServlet?ACTION=ADD&hdnbookIsbn=<%= b.getBook_Isbn()%>&hdnbookTitle=<%= b.getBook_Title()%>&hdnbookprice=<%= b.getPrice() %>">Add to Shopping Cart</a></td>
				<input type="hidden"  name="hdnbookIsbn"/>
				<input type="hidden"  name="hdnbookTitle"/>
				<input type="hidden"  name="hdnbookprice"/>
				<input type="hidden"  name="item"/>
				 <input type="hidden" name="ACTION"  value="ADD"/> 
				 
				 <input type="hidden" name="ACTION"  value="order"/> 
				<td>
				</tr>
				<%}} %>
				
	</form>
</body>
</html>