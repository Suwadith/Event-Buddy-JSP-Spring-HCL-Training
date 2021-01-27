<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">

<title>Customer Registration</title>
</head>
<body>
<hr>
<h1 align="center">Registration</h1>
<hr>
<center>
<form action="RegisterCustomer" method="post">
<pre>
User Name:	<input type="text" name="userName" required/> <br>
Password:	<input type="password" name="password" required/> <br>
First Name:	<input type="text" name="firstName" required/> <br>
Last Name:	<input type="text" name="lastName" required/> <br>
E-mail Address:	<input type="email" name="email" required/> <br>
Mobile Number:	<input type="text" pattern="[0][0-9]{9}" name="mobile" required/> <br>
NIC Number:	<input type="text" name="nicNo" required/> <br>
	<input type="submit" value="Create Account" class="btn btn-primary"/> &nbsp; <input type="reset" value="Clear" class="btn btn-secondary"/>		
</pre>
</form>
</center>	
</body>
</html>