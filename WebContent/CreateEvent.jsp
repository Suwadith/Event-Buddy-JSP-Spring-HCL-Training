<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>Create Event</title>
</head>
<body>
<hr>
<center>
<h2>Create Event</h2>
<hr>
<br>
<form action="CreateEvent" method="post" enctype="multipart/form-data" id="eventform">
<pre>
Event Name: <input type="text" name="eventName" required/> <br>
Event Type: <input type="text" name="eventType" required/> <br>
Description: <textarea name="eventDescription" form="eventform" required></textarea> <br>
Event Date: <input type="date" name="eventDate" placeholder="mm/dd/yyyy" required pattern="mm/dd/yyyy"/> <br>
Start Time: <input type="time" name="startTime" placeholder="12:00" required/> <br>
End Time: <input type="time" name="endTime" placeholder="01:00" required /> <br>
Ticket Price: <input type="number" name="ticketPrice"  min="100" required/> <br>
Event Image: <input type="file" accept=".jpg" name="eventImage"/> <br>
<input type="hidden" name="hallId" value="<%=request.getParameter("hid")%>"/> 
				<input type="submit" value="Create" class="btn btn-success"/> &nbsp; <input type="reset" value="Clear" class="btn btn-warning"/> &nbsp; <a href="javascript:history.back()" class="btn btn-secondary">Go Back</a>					
</pre>
</form>
</center>
</body>
</html>