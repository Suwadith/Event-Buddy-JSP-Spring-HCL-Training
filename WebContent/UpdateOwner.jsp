<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Owner</title>
</head>
<body>
<h2>Update Owner</h2>
<form action="UpdateOwner" method="post">
<pre>
First Name:			<input type="text" name="firstName" value="${owner.firstName}" required/> <br><br>
Last Name:			<input type="text" name="lastName" value="${owner.lastName}" required/> <br><br>
E-mail Address:			<input type="text" name="email" value="${owner.email}" required/> <br><br>
Mobile Number:			<input type="text" name="mobile" value="${owner.mobile}" required/> <br><br>
Business Registration Number:	<input type="text" name="brNo" value="${owner.brNo}" required/> <br><br>
<input type="hidden" name="ownerID" value="${owner.ownerId}"/> 
		<input type="submit" value="Update"/> 

</pre>
</form>

<a href="javascript:history.back()">Go Back</a>
</body>
</html>