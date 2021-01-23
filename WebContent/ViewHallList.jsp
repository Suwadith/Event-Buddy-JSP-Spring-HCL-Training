<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="ErrorPage.jsp" %>

<%@page import="java.util.List" %> 
<%@page import="com.eb.model.Hall"%> <%-- Import Java class for list --%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hall List</title>
</head>
<body>
	<h1>Hall List</h1>
	<table border="2">
	<tr>
	<th>Id</th><th>Name</th><th>Type</th><th>Location</th><th>Contact</th><th>Seat Capacity</th><th colspan=2>Options</th>
	</tr>
	<%! String deleteURL; %>
		<% List<Hall> listHall = (List)request.getAttribute("hallList"); 
			for(Hall h : listHall){
				out.print("<tr><td>"+h.getHallId()+"</td><td>"+h.getHallName()+"</td>");
				out.print("<td>"+h.getHallType()+"</td><td>"+h.getHallLocation()+"</td>");
				out.print("<td>"+h.getHallContact()+"</td><td>"+h.getNoOfSeats()+"</td>");
				String updateURL = request.getContextPath()+"/SearchHall?id="+h.getHallId();
				deleteURL = request.getContextPath()+"/DeleteHall?id="+h.getHallId()+"&oid="+session.getAttribute("ownerID");
				out.print("<td><a href='"+updateURL+"'>Update</a></td>");
		%>
		<td>
		<a href="<%= deleteURL %>" 
			onclick="if(!confirm('Are you sure to delete the hall?')) return false"> Delete </a>
			</td>
			</tr>
		<% } %>
	</table>
	<br><br>
	<a href="CreateHall.jsp">Create Hall</a> 
	<br><br>
	<a href="OwnerHome.jsp">Back to Dashboard</a> 
</body>
</html>