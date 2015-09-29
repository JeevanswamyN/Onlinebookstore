<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
* {
    box-sizing: border-box;
}
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
-webkit-border-radius: 30px;
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
</style>
<script type="text/javascript">
function register()
{
	document.forms[0].ACTION.value='REGISTER';
	document.forms[0].submit();
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="login">
	<h1><strong>Welcome.</strong> Please login.</h1>
	<form action="LoginServlet" method="post">	
	<fieldset>
	<% String msg=(String)request.getAttribute("MESSAGE"); 

		if(msg!=null)
		{%>
		 
		<%= msg %>
		
		<% }%>	
	
	
	
		 <p>Username:<input type="text" name="username" required="required" placeholder="please enter the name"></p>
		<p>Password:<input type="password" name="password" required="required" placeholder="please enter the password" ></p>
		<p><a href="#">Forgot Password?</a></p>
			<p><input type="submit" value="Login"></p>
	<p><input type="submit" value="REGISTER" onclick="register();" ></p>
	<p><input type="hidden" name="ACTION" value="LOGIN"><p/>

		
	</fieldset>
	</form>
	</div>
</body>
</html>