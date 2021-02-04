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
<style>.table{
  width: auto !important;
  text-align: center;
}</style>
<title>Owner List</title>
</head>
<body>
<hr>
<h1 align="center"> Welcome Admin!!</h1>
<hr>
<h2 align="center"> Manage Owners </h2>
<hr>
<center>
	<table class="table table-bordered table-striped">
	<tr>
	<th>First Name</th><th>Last Name</th><th>Email</th><th>Mobile</th><th>BR Number</th><th colspan=2>Options</th>
	</tr>
	<c:forEach var="owner" items="${ownerList}">
		<tr>
		<td>${owner.firstName}</td>
		<td>${owner.lastName}</td>
		<td>${owner.email}</td>
		<td>${owner.mobile}</td>
		<td>${owner.brNo}</td>					
		<td>
		<a href="<%=request.getContextPath()%>/SearchOwner?id=${owner.ownerId}" class="btn btn-warning"> Update </a>
		</td>
		<td><a href="<%=request.getContextPath()%>/DeleteOwner?id=${owner.userId}" 
			onclick="if(!confirm('Are you sure to delete the owner?')) return false" class="btn btn-danger" > Delete </a>
		</td>
		</tr>
	</c:forEach>
	</table>
<center>
<div align="center">
<hr>
	<a href="CreateOwner.jsp" class="btn btn-success"> Create Account </a> &nbsp;
	<a href="javascript:history.back()" class="btn btn-secondary"> Go Back </a>
</div>
</body>
</html>