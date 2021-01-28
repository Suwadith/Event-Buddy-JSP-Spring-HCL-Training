<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<hr>
<h1 align="center">Event Buddy</h1>
<hr>
<br>
<h3 align="center">Please login to continue</h3>
<center>
<font color="red">${message}</font>
<br>
<form action="LoginUser" method="post" class="form-group">
<pre>
Username : <input type="text" name="username" class="form-text text-muted" required> <br><br>
Password : <input type="password" name="password" class="form-text text-muted" required> <br><br>
<input type="submit" value="Login" class="btn btn-primary"/> &nbsp; <input type="reset" value="Clear" class="btn btn-secondary"/> 
<br>
<a href="RegisterCustomer.jsp" class="btn btn-success"> Register </a>
</pre>
</form>
</center>

</body>
</html>