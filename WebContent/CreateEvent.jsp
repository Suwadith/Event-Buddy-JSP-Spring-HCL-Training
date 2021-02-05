<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>Create Event</title>
<script>	
	function validateDate(val){
		var today = new Date();
		var checkDate = new Date(val);
		if(checkDate<today)
		{
			alert("Back dated events cannot be created!!");
			document.getElementById("eventDate").value = today.toLocaleDateString('fr-CA');
		}
	}	
</script>
</head>
<body>
<hr>
<center>
<h2>Create Event</h2>
<hr>
<br>
<form action="CreateEvent" method="post" id="eventform">
<pre>
Event Name: <input type="text" name="eventName" required/> <br>
Event Type: <input type="text" name="eventType" required/> <br>
Description: <textarea name="eventDescription" form="eventform" required></textarea> <br>
Event Date: <input type="date" name="eventDate" id="eventDate" onchange="validateDate(this.value)" required/><br>
Start Time: <input type="time" name="startTime" required/><br>
End Time: <input type="time" name="endTime" required /> <br>
Ticket Price: <input type="number" name="ticketPrice"  min="100" required/> <br>
Event Image: <input type="url" name="eventImage"/> <br>
<input type="hidden" name="hallId" value="<%=request.getParameter("hid")%>"/> 
				<input type="submit" value="Create" class="btn btn-success"/> &nbsp; <input type="reset" value="Clear" class="btn btn-warning"/> &nbsp; <a href="javascript:history.back()" class="btn btn-secondary">Go Back</a>					
</pre>
</form>
</center>
</body>
</html>