<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp" %>

<%@page import="java.util.List" %> 
<%@page import="com.eb.model.Hall"%> <%-- Import Java class for list --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hall List</title>
</head>
<body>
	<h1>Hall List</h1>
	<table border="1">
	<tr>
	<th>Id</th><th>Name</th><th>Type</th><th>Location</th><th>Contact</th><th>Seats</th><th colspan=2>Options</th>
	</tr>
	<c:forEach var="hall" items="${hallList}">
		<tr>
		<td>${hall.hallId}</td>
		<td>${hall.hallName}</td>
		<td>${hall.hallType}</td>
		<td>${hall.hallLocation}</td>
		<td>${hall.hallContact}</td>
		<td>${hall.noOfSeats}</td>					
		<td>
		<a href="<%=request.getContextPath()%>/SearchHall?id=${hall.hallId}">Update</a>
		<a href="<%=request.getContextPath()%>/DeleteHall?id=${hall.hallId}&oid=<%=session.getAttribute("ownerID")%>" 
			onclick="if(!confirm('Are you sure to delete the hall?')) return false"> Delete </a>
		</td>
		</tr>
		</c:forEach>
	</table>
	<br><br>
	<a href="CreateHall.jsp">Create Hall</a> 
	<br><br>
	<a href="OwnerHome.jsp">Back to Dashboard</a> 
</body>
</html>