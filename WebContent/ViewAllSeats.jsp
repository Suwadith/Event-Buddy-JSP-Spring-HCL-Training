<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
    <%@ page import="com.eb.model.Seat" %>
    
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<style>
.badgebox
{
    opacity: 0;
}

.badgebox + .badge
{
    
    text-indent: -999999px;
   
	width: 27px;
}

.badgebox:focus + .badge
{
    
    box-shadow: inset 0px 0px 5px;
    
}

.badgebox:checked + .badge
{
	text-indent: 0;
}

</style>

<script>

$(function () {
    $('.button-checkbox').each(function () {

        // Settings
        var $widget = $(this),
            $button = $widget.find('button'),
            $checkbox = $widget.find('input:checkbox'),
            color = $button.data('color'),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        // Event Handlers
        $button.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });

        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $button.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $button.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$button.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $button
                    .removeClass('btn-default')
                    .addClass('btn-' + color + ' active');
            }
            else {
                $button
                    .removeClass('btn-' + color + ' active')
                    .addClass('btn-default');
            }
        }

        // Initialization
        function init() {

            updateDisplay();

            // Inject the icon if applicable
            if ($button.find('.state-icon').length == 0) {
                $button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i> ');
            }
        }
        init();
    });
});

</script>
<title>View Seats</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Event Buddy</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
<% 
	if(session.getAttribute("customerID")==null)
	{
		response.sendRedirect("Login.jsp");
	}
%>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="CustomerHome.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
    </ul>   
    <form class="form-inline my-2 my-lg-0" action="LogoutUser" method="get">
    <strong style="color:white" > <%=session.getAttribute("customerName")%> </strong> &nbsp; &nbsp;
    <button class="btn btn-secondary my-2 my-sm-0" type="submit">Logout</button>
	</form>
  </div>
</nav>
<hr>
<h2 align="center">Please choose your seat(s)</h2>
<hr>
<br>
<div class="container">
	<div class="row text-center">

	<form action="BookTicket" method="GET">
	<% 
	
	ArrayList<Seat> list = (ArrayList<Seat>) request.getAttribute("seatList"); 
		
	int rows = list.size()/10;
	
	int count = 0;
	
	%>
	<table>
	<c:forEach var = "i" begin = "1" end = "<%= rows %>">
         <tr>
         <c:forEach var = "j" begin = "1" end = "10">
         
         
         
         <%
         
         if(!list.get(count).isSeatStatus()) { 
         
         %>
         <td>
         <span class="button-checkbox">
        <button type="button" class="btn" data-color="success"><%= list.get(count).getSeatNo() %></button>
        <input type="checkbox" class="hidden" name="seats" value="<%= list.get(count).getSeatId() %>"/>
    	</span> 
       </td>
         <%
         
         }
         
         %>
         
         <%
         
         if(list.get(count).isSeatStatus()) { 
         
         %>
         <td>
         <label for="danger" class="btn btn-danger"><%= list.get(count).getSeatNo() %>
	         <input type="checkbox" class="badgebox" disabled="disabled" checked>
	         <span class="badge">&check;</span>
         </label>
    </td>
        	 
         <%
         
         }
         
         count++;
         
         %>
        
      	</c:forEach>
      	<tr>
      </c:forEach>
	</table>
	
	
	
	<input type="hidden" name="eventId" value="${eventId}">
	
	<br><br><br>
    <c:choose>
    <c:when test="${noOfSeatsAvailable=='0'}">
    <button class="btn btn-primary" type="submit" disabled="disabled">Book Now</button>
    
    </c:when>    
    <c:otherwise>
    <button class="btn btn-primary" type="submit">Book Now</button>
    
  
    </c:otherwise>
	</c:choose>			
	</form>	
	
		</div>
</div>

</body>
</html>