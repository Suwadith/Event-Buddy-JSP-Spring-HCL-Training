<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" >
<meta charset="ISO-8859-1">
<title>Register Owner</title>

<script>
    function validateForm() {

        var username, password, firstName, lastName, email, mobile, brNo = "";
        var alertMessage = "";
        var passwordRegex = /^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[a-zA-Z!#@$^%&? "])[a-zA-Z0-9!#@^$%&?]{6,25}$/;
        var emailRegex = /\S+@\S+\.\S+/;
        var mobileRegex = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;

        username = document.forms["ownerForm"]["userName"].value.trim();
        password = document.forms["ownerForm"]["password"].value;
        firstName = document.forms["ownerForm"]["firstName"].value.trim();
        lastName = document.forms["ownerForm"]["lastName"].value.trim();
        email = document.forms["ownerForm"]["email"].value.trim();
        mobile = document.forms["ownerForm"]["mobile"].value.trim();
        brNo = document.forms["ownerForm"]["brNo"].value.trim();

        if(username.length==0) {
            alertMessage += "username must be filled out\n";
        }
        if(username.length<6) {
            alertMessage += "username must atleast contain 6 characters minimum\n";
        }
        if(username.length>25) {
            alertMessage += "username must only contain 25 characters at max\n";
        }
        if(!passwordRegex.test(password)) {
            alertMessage += "password must atleast contain 6 characters minimum\n" + "password must only contain 25 characters at max\n"
                            + "password must contain atleast 1 uppercase character\n" +  "password must contain atleast 1 lowerase character\n"
                            + "password must contain atleast 1 digit\n" + "password must contain atleast 1 one special character\n";
        }
        if(firstName.length==0) {
            alertMessage += "firstName must be filled out\n";
        }
        if(firstName.length<3) {
            alertMessage += "firstName must atleast contain 3 characters minimum\n";
        }
        if(firstName.length>25) {
            alertMessage += "firstName must only contain 25 characters at max\n";
        }
        if(lastName.length==0) {
            alertMessage += "lastName must be filled out\n";
        }
        if(lastName.length<3) {
            alertMessage += "lastName must atleast contain 3 characters minimum\n";
        }
        if(lastName.length>25) {
            alertMessage += "lastName must only contain 25 characters at max\n";
        }
        if(!emailRegex.test(email)) {
            alertMessage += "please provide a valid email address\n";
        }
        if(email.length>50) {
            alertMessage += "email can only have a maximum of 50 characters\n";
        } 
        if(!mobileRegex.test(mobile)) {
            alertMessage += "please provide a valid mobile number with 10 digits\n";
        }
        if(isNaN(brNo)) {
            alertMessage += "please provide a valid br number with digits only\n";
        }else if(brNo.length>10) {
            alertMessage += "please provide a valid br number within 10 digits only\n";
        }

        if(alertMessage.length>10) {
            alert(alertMessage);
            return false;
        }
}
</script>

</head>
<body>
<center>
<hr>
<h2>Register Owner</h2>
<hr>
<br>
<form name="ownerForm" action="CreateOwner" method="post" onsubmit="return validateForm()">
<pre>
User Name:	<input type="text" name="userName" required/> 
<br>
Password:	<input type="password" name="password" required/> 
<br>
First Name:	<input type="text" name="firstName" required/> 
<br>
Last Name:	<input type="text" name="lastName" required/> 
<br>
E-mail Address:	<input type="text" name="email" required/> 
<br>
Mobile Number:	<input type="text" name="mobile" required/>
<br>
BR Number:	<input type="text" name="brNo" required/> 
<br>
<input type="submit" value="Create Account" class="btn btn-success"/> &nbsp; <input type="reset" value="Clear" class="btn btn-warning"/> &nbsp; <a href="javascript:history.back()" class="btn btn-secondary">Go Back</a>
</pre>
</form>
</center>
</body>
</html>