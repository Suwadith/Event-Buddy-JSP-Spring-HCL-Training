<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Welcome</title>
<style>
.jumbotron{
	border-radius: 0px;
	background-color: light-grey;
	color:black;
}

</style>
</head>
<body>

 <div class="container-fluid" style="margin-top: 30px"  align="center">
       <div class="jumbotron">
           <div class="container">
               <h1>Hello, <%=session.getAttribute("customerName")%> !!</h1>
       			<br>
              	<p>
               	<form action="ViewAllEvents" method="get">
				<input type="hidden" name="customerID" value="<%=session.getAttribute("customerID")%>"/>
				<input type="submit" class="btn btn-primary btn-lg" value="View All Events">
				</form> <br>
				<form action="LogoutUser" method="get">
				<input type="submit" class="btn btn-primary btn-lg" value="Logout">
				</form>
               </p>
           </div>
       </div>
  </div>
  
</body>
</html>