<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

 
body {
    background-color: FF9900;
    background:  url(Book-And-Tea-Cup.jpg);
      background-size: 100% ;
}
h1 {
    background-color: #FF9900;
}

p {
    background-color: #FFFFCC;
}
/* div {

    background:  url(positive-thinking-books.jpg);
     background-size: 100% ;
     }
   */ 

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
 <p align="left">Hi : <%=session.getAttribute("NAME")%>
 <form action="LogoutServlet" method="post">
		<input type="submit" value="Logout" >
	</form></p> 
	<h1 align="center">Online Book Shop</h1>
	<p align="center">
		<form action="BookServlet" method="post" align="center">
		<input type="text" name="bookTitle"  placeholder="Enter The BookName To Search" required="required">
		<input type="submit" value="Booksearch" >
		</form>
	<p/>	
		
	<table>
		<tr>
			<td>
			<a href="BookServlet?bookTitle=copps">
			<img alt="Java" src="cproo.jpg"  height="200px" width="200px" border="2px">
			</a>
			<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Java Concurency
			<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
			</td>
		
			<td >
			<a href="BookServlet?bookTitle=java">
			<img alt="Java" src="javaforandroid.jpg" height="200px" width="200px" border="2px">
			</a>
			<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Java Android
			<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
			</td>
			
			<td >
			<a href="BookServlet?bookTitle=javac">
			<img alt="Java" src="JavaScriptRegularExpressions.png" height="200px" width="200px" border="2px">
			</a>
			<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Java Script
			<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
			</td>
			
			<td >
			<a href="BookServlet?bookTitle=henrik">
			<img alt="Java" src="Java_All_in_One.png" height="200px" width="200px" border="2px">
			</a>
			<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Java Henrik
			<br/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
			</td>
		</tr>
	</table>
				
		</div>
		
</body>
</html>