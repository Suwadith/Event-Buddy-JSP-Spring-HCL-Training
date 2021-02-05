<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">

<title>Customer Registration</title>
<script>
    function validateForm() {
        var username, password, firstName, lastName, email, mobile, nicNo = "";
        var alertMessage = "";
        var passwordRegex = /^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[a-zA-Z!#@$^%&? "])[a-zA-Z0-9!#@^$%&?]{6,25}$/;
        var emailRegex = /\S+@\S+\.\S+/;
        var mobileRegex = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
        username = document.forms["ownerForm"]["userName"].value.trim();
        password = document.forms["ownerForm"]["password"].value;
        firstName = document.forms["ownerForm"]["firstName"].value.trim();
        lastName = document.forms["ownerForm"]["lastName"].value.trim();
        mobile = document.forms["ownerForm"]["mobile"].value.trim();
        nicNo = document.forms["ownerForm"]["nicNo"].value.trim();
        
        if(username.length==0) {
            alertMessage += "Username must be filled out\n";
        }
        if(username.length<6) {
            alertMessage += "Username must atleast contain 6 characters minimum\n";
        }
        if(username.length>25) {
            alertMessage += "Username must only contain 25 characters at max\n";
        }
        if(!passwordRegex.test(password)) {
            alertMessage += "Password must atleast contain 6 characters minimum\n" + "Password must only contain 25 characters at max\n"
                            + "Password must contain atleast 1 uppercase character\n" +  "Password must contain atleast 1 lowerase character\n"
                            + "Password must contain atleast 1 digit\n" + "Password must contain atleast 1 one special character\n";
        }
        if(firstName.length==0) {
            alertMessage += "First Name must be filled out\n";
        }
        if(firstName.length<3) {
            alertMessage += "First Name must atleast contain 3 characters minimum\n";
        }
        if(firstName.length>25) {
            alertMessage += "First Name must only contain 25 characters at max\n";
        }
        if(lastName.length==0) {
            alertMessage += "Last Name must be filled out\n";
        }
        if(lastName.length<3) {
            alertMessage += "Last Name must atleast contain 3 characters minimum\n";
        }
        if(lastName.length>25) {
            alertMessage += "Last Name must only contain 25 characters at max\n";
        }
        if(!mobileRegex.test(mobile)) {
            alertMessage += "please provide a valid mobile number with 10 digits\n";
        }
        if(isNaN(nicNo)) {
            alertMessage += "Please provide a valid nic number with digits only\n";
        }else if(nicNo.length>10) {
            alertMessage += "Please provide a valid nic number within 10 digits only\n";
        }
        if(alertMessage.length>10) {
            alert(alertMessage);
            return false;
        }
}
</script>
</head>
<body>
<hr>
<h1 align="center">Registration</h1>
<hr>
<br>
<center>
<form name="ownerForm" action="RegisterCustomer" method="post" onsubmit="return validateForm()">
<pre>
User Name:	<input type="text" name="userName" required/> <br>
Password:	<input type="password" name="password" required/> <br>
First Name:	<input type="text" name="firstName" required/> <br>
Last Name:	<input type="text" name="lastName" required/> <br>
E-mail Address:	<input type="email" name="email" required/> <br>
Mobile Number:	<input type="text"  name="mobile" required/> <br>
NIC Number:	<input type="text" name="nicNo" required/> <br><br>
<input type="submit" value="Create Account" class="btn btn-primary"/> <input type="reset" value="Clear" class="btn btn-warning"/> <a href="javascript:history.back()" class="btn btn-secondary"> Go Back </a>	
						
</pre>
</form>
</center>	
</body>
</html>