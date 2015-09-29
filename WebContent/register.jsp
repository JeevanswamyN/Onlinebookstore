<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
-webkit-border-radius: 3px 0px 0px 3px
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
		<form action="LoginServlet" method="post"  name="form">
		<fieldset>
		<% String msg=(String)request.getAttribute("MESSAGE"); 

		if(msg!=null)
		{%>
		 
		<%= msg %>
		
		<% }%>	
	
	
		<p>Username:<input type="text" name="username"  required="required" placeholder="please enter the name"></p>
		<p>Password:<input type="password" name="password"  required="required" placeholder="please enter the password"></p>
		<p>Email:<input type="email" name="email" required="required"  ></p>
		<p>City :
		<select type="text" name="city" >
		<option>Select</option>
		  <option value="Tumkur">Tumkur</option>
		  <option value="Banglore">Banglore</option>
		  <option value="Mysore">Mysore</option>
		  <option value="Delhi">Delhi</option>
			</select>
          State : <select type="text" name="state" >
		  <option>Select</option>
		  <option value="Karnataka">Karnataka</option>
		  <option value="Tamilnadu">Tamilnadu</option>
		  <option value="Andrapradesh">Andrapradesh</option>
		  <option value="Nepal">Nepal</option>
		  </select></p>
		<p>Phone No:<input type="text" name="phNo" required="required"  placeholder="please enter the phone no" pattern="[0-9]{10,10}" title='Phone Number (Format: 9999999999'></p>
		
		
		<p><input type="Submit" value="Submit"  /></p>
		
	</fieldset>
	</form>
	
	</div>
</body> 
</html>