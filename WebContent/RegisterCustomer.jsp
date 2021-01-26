<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
</head>
<body>
	<h1>Customer Registration</h1>
	<form action="RegisterCustomer" method="post">
		<pre>
			User Name:			<input type="text" name="userName" required/> <br><br>
			Password:			<input type="password" name="password" required/> <br><br>
			First Name:			<input type="text" name="firstName" required/> <br><br>
			Last Name:			<input type="text" name="lastName" required/> <br><br>
			E-mail Address:			<input type="text" name="email" required/> <br><br>
			Mobile Number:			<input type="text" name="mobile" required/> <br><br>
			NIC Number:	<input type="text" name="nicNo" required/> <br><br>
			
							 
						<input type="submit" value="Create Account"/> &nbsp; <input type="reset" value="Clear"/>
			<br><br>
		
		</pre>
	</form>
</body>
</html>