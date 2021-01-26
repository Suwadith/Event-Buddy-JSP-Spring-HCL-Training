<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Owner Report</title>
<script type="text/javascript">
	
function printDiv() 
{

  var divToPrint=document.getElementById('DivIdToPrint');

  var newWin=window.open('','Print-Window');

  newWin.document.open();

  newWin.document.write('<html><body onload="window.print()">'+divToPrint.innerHTML+'</body></html>');

  newWin.document.close();

  setTimeout(function(){newWin.close();},10);

}

</script>
</head>
<body>

<h1 align="center">Welcome <%=session.getAttribute("ownerName")%></h1>
<hr>

<div id="DivIdToPrint">
<h2 align="center">Sales Report</h2>

<table align="center" border="1">
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
</div>
<div align="center">
<button onclick="printDiv()">Print Report</button>
&nbsp;
<button onclick="javascript:history.back()"> Go Back </button>
</div>

</body>

</html>