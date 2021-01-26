<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<hr>
<h1 align="center">Event Buddy</h1>
<hr>
<h2 align="center">Please login to continue</h2>
<center>
<form action="LoginUser" method="post">
<pre>
Username : <input type="text" name="username"> <br><br>
Password : <input type="password" name="password"> <br><br>
<input type="submit" value="Login"/> &nbsp; <input type="reset" value="Clear"/> 
<a href="RegisterCustomer.jsp"> Register </a>
</pre>
</form>
</center>

</body>
</html>