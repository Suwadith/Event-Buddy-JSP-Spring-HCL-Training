<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@page import="java.util.List" %> 
<%@page import="com.eb.model.Owner"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Owner List</title>
</head>
<body>
<hr>
<h1>Welcome Admin!!</h1>
<hr>
	<h2>Manage Owners</h2>
	<table border="1">
	<tr>
	<th>Owner ID</th><th>First Name</th><th>Last Name</th><th>Email</th><th>Mobile</th><th>BR Number</th><th colspan=2>Options</th>
	</tr>
	<c:forEach var="owner" items="${ownerList}">
		<tr>
		<td>${owner.ownerId}</td>
		<td>${owner.firstName}</td>
		<td>${owner.lastName}</td>
		<td>${owner.email}</td>
		<td>${owner.mobile}</td>
		<td>${owner.brNo}</td>					
		<td>
		<a href="<%=request.getContextPath()%>/SearchOwner?id=${owner.ownerId}">Update</a>
		</td>
		<td><a href="<%=request.getContextPath()%>/DeleteOwner?id=${owner.userId}" 
			onclick="if(!confirm('Are you sure to delete the owner?')) return false"> Delete </a>
		</td>
		</tr>
	</c:forEach>
	</table>
	<br><br>
	<a href="CreateOwner.jsp">Create Owner</a> 
	<br><br>
	<a href="javascript:history.back()">Go Back</a>
</body>
</html>