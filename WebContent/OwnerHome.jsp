<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Owner Home Page</title>
</head>
<body>
<div class="card" align="center">
 				<hr>
				<h1 align="center">Welcome <%=session.getAttribute("ownerName")%> !!</h1>
				<hr>
				<br>
				<form action="ViewHallList" method="get">
				<input type="hidden" name="ownerID" value="<%=session.getAttribute("ownerID")%>"/>
				<input type="submit" value="Manage Hall" class="btn btn-success btn-md">
				</form>
				<br>
				<form action="OwnerReport" method="get">
				<input type="hidden" name="ownerID" value="<%=session.getAttribute("ownerID")%>"/>
				<input type="submit" value="View Report" class="btn btn-primary btn-md">
				</form>
				<br>
				<form action="LogoutUser" method="get">
				<input type="submit" value="Logout" class="btn btn-secondary btn-md">
				</form>
				<br>
       </div>      

</body>
</html>