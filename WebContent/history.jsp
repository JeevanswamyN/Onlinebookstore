<%@page import="org.ndt.entity.OrderTable"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

			<% List<OrderTable> olist=(List<OrderTable>)request.getAttribute("USERLIST"); 
			String mess=(String)request.getAttribute("MESSAGE"); %>
		<h4><p>Thank you for shopping ....</p></h4>
		<%if(mess!=null){ %>
	    <h4><p><%=mess%></p></h4>   
		<%}%>
			
			 <table border="1" align="center">
				
				<tr>
				<th>BookIsbn</th>
				<th>BookTitle</th>
				<th>Book No of books</th>
				<th>AuthorName</th>
				<th>Price</th>
				</tr>
			<%-- 	 <c:forEach items="${USERLIST}" var="list">	
				 <TR>
				 <td> ${list.username}</td>
				 <td></td>
				 </TR>
				 </c:forEach>
		 --%> <%
		
		for(OrderTable b:olist) 
		{ %>
		
				<tr>
				<td><%= b.getTotalamt()%></td>
				<td><%= b.getUsername()%></td>
				<td><%= b.getOrderItem().getBookIsbn()%></td>
				<td><%= b.getOrderItem().getBookprice()%></td>
				<td><%= b.getOrderItem().getBookTitle() %></td>
				<%}%>

</body>
</html>