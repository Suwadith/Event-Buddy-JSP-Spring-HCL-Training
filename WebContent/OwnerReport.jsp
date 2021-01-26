<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Owner Report</title>
</head>
<body>

<h1 align="center">Welcome <%=session.getAttribute("ownerName")%></h1>
<hr>
<h2 align="center">Sales Report</h2>
<center>
<table border="1">
	<tr>
		<th>No of Hall (s) : </th>
		<td><%=request.getAttribute("hallCount")%></td>
	</tr>
	<tr>
		<th>No of Event (s) : </th>
		<td><%=request.getAttribute("eventCount")%></td>
	</tr>
	<tr>
		<th>Tickets sold : </th>
		<td><%=request.getAttribute("ticketCount")%></td>
	</tr>
	<tr>
		<th>Total Sales : </th>
		<td>Rs.<%=request.getAttribute("salesAmount")%></td>
	</tr>
</table>
<br>
<button onclick="window.print()">Print Report</button>
&nbsp;
<button onclick="javascript:history.back()"> Go Back </button>
</center>
</body>

</html>