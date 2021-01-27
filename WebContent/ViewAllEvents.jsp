<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List" %> 
<%@page import="com.eb.model.Event"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>Event List</h1>

	<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">

        <div class="table-responsive">

                
    <table id="mytable" class="table table-bordred table-striped">
                   
    <tr>               
    <th>Name</th>
    <th>Description</th>
    <th>Type</th>
    <th>Date</th>
    <th>Start Time</th>
    <th>End Time</th>
    <th>Ticket Price</th>
    <th colspan=2>Book</th>
    </tr>
    <tbody>
    <c:forEach var="event" items="${eventList}">
    <tr>
    
    	<td>${event.eventName}</td>
		<td>${event.eventType}</td>
		<td>${event.eventDescription}</td>
		<td>${event.eventDate}</td>
		<td>${event.startTime}</td>
		<td>${event.endTime}</td>
		<td>${event.ticketPrice}</td>
		
		
		<td><a href="<%=request.getContextPath()%>/ViewAllSeats?eventId=${event.eventId}">View Seats</a></td>
						
    </tr>
    </c:forEach>
    </tbody>
        
</table>


                
            </div>
            
        </div>
	</div>
</div>



</body>
</html>