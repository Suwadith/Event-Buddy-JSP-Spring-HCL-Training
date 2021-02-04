<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Register Owner</title>
</head>
<body>
<center>
<hr>
<h2>Register Owner</h2>
<hr>
<br>
<form action="CreateOwner" method="post">
<pre>
User Name:	<input type="text" name="userName" required/> <br>
Password:	<input type="password" name="password" required/> <br>
First Name:	<input type="text" name="firstName" required/> <br>
Last Name:	<input type="text" name="lastName" required/> <br>
E-mail Address:	<input type="text" name="email" required/> <br>
Mobile Number:	<input type="text" name="mobile" required/> <br>
Business Registration Number:	<input type="text" name="brNo" required/> <br>

<input type="submit" value="Create Account"/> &nbsp; <input type="reset" value="Clear"/>
</pre>
</form>
</center>
</body>
</html>