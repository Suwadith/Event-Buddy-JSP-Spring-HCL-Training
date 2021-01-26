<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Owner Home Page</title>
</head>
<body>
<hr>
<h1 align="center">Welcome <%=session.getAttribute("ownerName")%></h1>
<hr>
<br><br>
<div align="center">
<form action="ViewHallList" method="get">
<input type="hidden" name="ownerID" value="<%=session.getAttribute("ownerID")%>"/>
<input type="submit" value="Manage Hall">
</form>
<br>
<form action="OwnerReport" method="get">
<input type="hidden" name="ownerID" value="<%=session.getAttribute("ownerID")%>"/>
<input type="submit" value="View Report">
</form>
<br>
<form action="LogoutUser" method="get">
<input type="submit" value="Logout">
</form>
</div>
</body>
</html>