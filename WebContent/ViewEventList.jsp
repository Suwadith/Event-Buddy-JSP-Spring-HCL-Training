<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp" %>
<%@page import="java.util.List" %> 
<%@page import="com.eb.model.Event"%> <%-- Import Java class for list --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>.table{
  width: auto !important;
  text-align: center;
}</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>Event List</title>
</head>
<body>
<hr>
	<h1 align="center">Event List</h1>
<hr>
<center>
	<table class="table table-bordered table-striped">
	<tr>
	<th>Name</th><th>Type</th><th>Description</th><th>Date</th><th>Start Time</th><th>End Time</th><th>Ticket Price</th><th colspan=2>Options</th>
	</tr>
	<c:forEach var="event" items="${eventList}">
		<tr>
		<td>${event.eventName}</td>
		<td>${event.eventType}</td>
		<td>${event.eventDescription}</td>
		<td>${event.eventDate}</td>
		<td>${event.startTime}</td>
		<td>${event.endTime}</td>
		<td>${event.ticketPrice}</td>				
		<td>
		<a href="<%=request.getContextPath()%>/SearchEvent?id=${event.eventId}&hid=<%=request.getAttribute("hallId")%>" class="btn btn-warning" >Update</a>
		</td>
		<td>
		<a href="<%=request.getContextPath()%>/DeleteEvent?id=${event.eventId}&hid=<%=request.getAttribute("hallId")%>" 
			onclick="if(!confirm('Are you sure to delete the event?')) return false" class="btn btn-danger"> Delete</a>
		</td>
		</tr>
		</c:forEach>
	</table>
<hr>	
	<a href="CreateEvent.jsp?hid=<%=request.getAttribute("hallId")%>" class="btn btn-success">Create Event</a>  &nbsp;
	<a href="javascript:history.back()" class="btn btn-secondary">Go Back</a>
</center>
</body>
</html>