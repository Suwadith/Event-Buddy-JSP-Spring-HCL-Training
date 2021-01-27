<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Home Page</title>
</head>
<body>
<hr>
<h1 align="center">Welcome <%=session.getAttribute("customerName")%></h1>
<hr>
<br><br>
<div align="center">
<form action="ViewAllEvents" method="get">
<input type="hidden" name="customerID" value="<%=session.getAttribute("customerID")%>"/>
<input type="submit" value="View All Events">
</form>
<br>
<br>
<form action="LogoutUser" method="get">
<input type="submit" value="Logout">
</form>
</div>
</body>
</html>