<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Update Event</title>
</head>
<body>
<center>
<hr>
<h2 align="center">Update Event</h2>
<hr>
<br>
<form action="UpdateEvent" method="post" id="eventform">
<pre>
	Event Name:	<input type="text" name="eventName" value="${event.eventName}" required/> <br>
	Event Type:	<input type="text" name="eventType" value="${event.eventType}" required/> <br><br>
	Description:	<textarea name="eventDescription" form="eventform" required>${event.eventDescription}</textarea> <br>
	Event Date:	<input type="date" name="eventDate" value="${event.eventDate}" required/> <br>
	Start Time:	<input type="time" name="startTime" value="${event.startTime}" required/> <br>
	End Time:	<input type="time" name="endTime" value="${event.endTime}" required/> <br>
	Ticket Price:	<input type="number" name="ticketPrice" value="${event.ticketPrice}"required/> <br>
	<input type="hidden" name="eventId" value="${event.eventId}"/>
	<input type="hidden" name="hallId" value="<%=request.getParameter("hid")%>"/> 
	<input type="submit" value="Update" class="btn btn-success"/> &nbsp; <input type="reset" value="Clear" class="btn btn-warning"/> &nbsp; <a href="javascript:history.back()" class="btn btn-secondary">Go Back</a>

</pre>
</form>
</center>

</body>
</html>