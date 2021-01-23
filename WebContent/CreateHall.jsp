<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Hall</title>
</head>
<body>
<h2>Create Hall</h2>
<h3>Please provide hall details</h3>
<form action="CreateHall" method="post">
<pre>
Hall Name: 	<input type="text" name="hallName" required/> <br><br>
Hall Type: 	<input type="text" name="hallType" required/> <br><br>
Hall Location: 	<input type="text" name="hallLocation" required/> <br><br>
Hall Contact: 	<input type="text" name="hallContact" required/> <br><br>
No of Seats: 	<input type="number" name="noOfSeats" required/> <br><br>
				<input type="hidden" name="ownerID" value="301"/> 
			<input type="submit" value="Create"/> &nbsp; <input type="reset" value="Clear"/>
<br><br>

</pre>
</form>
</body>
</html>