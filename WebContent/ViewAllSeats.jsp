<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
.badgebox
{
    opacity: 0;
}

.badgebox + .badge
{
    
    text-indent: -999999px;
   
	width: 27px;
}

.badgebox:focus + .badge
{
    
    box-shadow: inset 0px 0px 5px;
    
}

.badgebox:checked + .badge
{
	text-indent: 0;
}

</style>
<title>View Seats</title>
</head>
<body>

	
		
<div class="container">
	<div class="row text-center">
	
	<form action="BookTicket" method="GET">
	<h1>Seats</h1>
	
	<c:forEach var="seat" items="${seatList}">
	<label for="success" class="btn btn-success">${seat.seatNo}<input type="checkbox" name="seats" class="badgebox" value="${seat.seatId}"><span class="badge">&check;</span></label>
	
	</c:forEach>
	
	<c:forEach var="seat" items="${bookedSeatList}">
		
		
		 <label for="danger" class="btn btn-danger">${seat.seatNo}<input type="checkbox" class="badgebox" disabled="disabled" checked><span class="badge">&check;</span></label>
		
	</c:forEach>
	<input type="hidden" name="eventId" value="${eventId}">
	
	<br><br><br>
    <c:choose>
    <c:when test="${noOfSeatsAvailable=='0'}">
    <button class="btn btn-primary" type="submit" disabled="disabled">Book Now</button>
    
    </c:when>    
    <c:otherwise>
    <button class="btn btn-primary" type="submit">Book Now</button>
       
    </c:otherwise>
	</c:choose>			
	</form>	
	
		</div>
</div>

</body>
</html>