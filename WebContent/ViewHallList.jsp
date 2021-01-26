<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp" %>

<%@page import="java.util.List" %> 
<%@page import="com.eb.model.Hall"%> <%-- Import Java class for list --%>
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
<title>Hall List</title>
</head>
<body>
<hr>
<h1 align="center">Hall List</h1>
<hr>
<center>
	<table class="table table-bordered table-striped">
	<tr>
		<th>Name</th> <th>Type</th> <th>Location</th> <th>Contact</th> <th>Seats</th><th>Manage</th>
	</tr>
	<c:forEach var="hall" items="${hallList}">
	<tr >
		<td>${hall.hallName}</td>
		<td>${hall.hallType}</td>
		<td>${hall.hallLocation}</td>
		<td>${hall.hallContact}</td>
		<td>${hall.noOfSeats}</td>					
		<td>
			<a href="<%=request.getContextPath()%>/SearchHall?id=${hall.hallId}" class="btn btn-warning">Update</a>
			<a href="<%=request.getContextPath()%>/DeleteHall?id=${hall.hallId}&oid=<%=session.getAttribute("ownerID")%>"
			onclick="if(!confirm('Are you sure to delete the hall?')) return false" class="btn btn-danger"> Delete </a>
			<a href="<%=request.getContextPath()%>/ViewEventList?hid=${hall.hallId}" class="btn btn-primary">Events</a>
		</td>
	</tr>
	</c:forEach>
	</table>
</center>
<div align="center">
<hr>
	<a  href="CreateHall.jsp" class="btn btn-success"> Create Hall </a>  &nbsp;  &nbsp;  &nbsp;
	<a href="javascript:history.back()" class="btn btn-secondary"> Go Back </a>
</div>
	
</body>
</html>