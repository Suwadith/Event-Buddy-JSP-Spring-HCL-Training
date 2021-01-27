<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Owner Home Page</title>
</head>
<body>
<hr>
<h1 align="center">Welcome <%=session.getAttribute("ownerName")%> !!</h1>
<hr>
<br><br>
<div align="center">
<form action="ViewHallList" method="get">
<input type="hidden" name="ownerID" value="<%=session.getAttribute("ownerID")%>"/>
<input type="submit" value="Manage Hall" class="btn btn-success">
</form>
<br>
<form action="OwnerReport" method="get">
<input type="hidden" name="ownerID" value="<%=session.getAttribute("ownerID")%>"/>
<input type="submit" value="View Report" class="btn btn-primary">
</form>
<br>
<form action="LogoutUser" method="get">
<input type="submit" value="Logout" class="btn btn-secondary">
</form>
</div>
</body>
</html>