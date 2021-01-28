<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<title>Owner Report</title>
<style>.table{
  width: auto !important;
  text-align: center;
}</style>
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
<hr>
<h1 align="center">View Report</h1>
<hr>
<br>
<div id="DivIdToPrint">
<h2 align="center"> <u>Sales Report</u></h2>
<br>
<center>
<table class="table">
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
		<td>Rs. <%=request.getAttribute("salesAmount")%></td>
	</tr>
</table>

</center>

<br>
</div>
<div align="center">
<button onclick="printDiv()" class="btn btn-primary" >Print Report</button>
&nbsp;
<button onclick="javascript:history.back()" class="btn btn-secondary" > Go Back </button>
</div>

</body>

</html>