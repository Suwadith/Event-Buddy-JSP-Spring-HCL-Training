<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Update Owner</title>
</head>
<body>
<center>
<hr>
<h2>Update Owner</h2>
<hr>
<br>
<form action="UpdateOwner" method="post">
<pre>
First Name:	<input type="text" name="firstName" value="${owner.firstName}" required/> <br><br>
Last Name:	<input type="text" name="lastName" value="${owner.lastName}" required/> <br><br>
E-mail Address:	<input type="text" name="email" value="${owner.email}" required/> <br><br>
Mobile Number:	<input type="text" name="mobile" value="${owner.mobile}" required/> <br><br>
BR Number:	<input type="text" name="brNo" value="${owner.brNo}" required/> <br><br>
<input type="hidden" name="ownerID" value="${owner.ownerId}"/> 
<input type="submit" value="Update" class="btn btn-success"/> &nbsp; <input type="reset" value="Clear" class="btn btn-warning"/> &nbsp; <a href="javascript:history.back()" class="btn btn-secondary">Go Back</a>
</pre>
</form>
</center>
</body>
</html>