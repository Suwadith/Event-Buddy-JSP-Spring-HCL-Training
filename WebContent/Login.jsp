<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Login</title>
</head>
<body>
<hr>
<h1 align="center">Event Buddy</h1>
<hr>
<br>
<h4 align="center">Please login to continue</h4>
<center>
<font color="red"> ${message} </font>
<br>
<form action="LoginUser" method="post" class="form-group">
<pre>
<b>Username :</b> <input type="text" name="username" class="form-text text-muted" maxlength="25" required> 
<br>
<b>Password :</b> <input type="password" name="password" class="form-text text-muted" maxlength="25" required> 
<br> 
<input type="submit" value="Login" class="btn btn-outline-primary"/> &nbsp; <input type="reset" value="Clear" class="btn btn-outline-secondary""/>
<br>
</pre>
</form>
<hr>
<strong> Don't have an account ? </strong> &nbsp; <a href="RegisterCustomer.jsp" class="btn btn-outline-success"> Register Now </a>
<hr>
</center>

</body>
</html>