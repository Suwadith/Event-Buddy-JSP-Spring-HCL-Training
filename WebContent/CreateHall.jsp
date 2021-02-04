<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Create Hall</title>
</head>
<body>
<center>
<hr>
<h2>Create Hall</h2>
<hr>
<br>
<form action="CreateHall" method="post">
<pre>
Hall Name: 	<input type="text" name="hallName" required/> <br><br>
Hall Type: 	<input type="text" name="hallType" required/> <br><br>
Hall Location: 	<input type="text" name="hallLocation" required/> <br><br>
Hall Contact: 	<input type="text" name="hallContact" required/> <br><br>
No of Seats: 	<input type="number" name="noOfSeats" required/> <br><br>
				<input type="hidden" name="ownerID" value="<%=session.getAttribute("ownerID")%>"/> 
<input type="submit" value="Create" class="btn btn-success"/> &nbsp; <input type="reset" value="Clear" class="btn btn-warning" /> &nbsp;  <a href="javascript:history.back()" class="btn btn-secondary">Go Back</a>
</pre>
</form>
</center>

</body>
</html>