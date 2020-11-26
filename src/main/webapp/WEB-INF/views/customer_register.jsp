<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
          
<style>
body {
  background-image: url("resources/image/bg.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
}
.form-control {
	height: 40px;
	box-shadow: none;
	color: #969fa4;
}
.form-control:focus {
	border-color: #5cb85c;
}
.form-control, .btn {        
	border-radius: 3px;
}
.signup-form {
	width: 450px;
	margin: 0 auto;
	padding: 30px 0;
  	font-size: 15px;
}
.signup-form h2 {
	color: #636363;
	margin: 0 0 15px;
	position: relative;
	text-align: center;
}
.signup-form h2:before, .signup-form h2:after {
	content: "";
	height: 2px;
	width: 30%;
	background: #d4d4d4;
	position: absolute;
	top: 50%;
	z-index: 2;
}	
.signup-form h2:before {
	left: 0;
}
.signup-form h2:after {
	right: 0;
}
.signup-form .hint-text {
	color: #999;
	margin-bottom: 30px;
	text-align: center;
}
.signup-form form {
	color: #999;
	border-radius: 3px;
	margin-bottom: 15px;
	background: #f2f3f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signup-form .form-group {
	margin-bottom: 20px;
}
.signup-form input[type="checkbox"] {
	margin-top: 3px;
}
.signup-form .btn {        
	font-size: 16px;
	font-weight: bold;		
	min-width: 140px;
	outline: none !important;
}
.signup-form .row div:first-child {
	padding-right: 10px;
}
.signup-form .row div:last-child {
	padding-left: 10px;
}    	
.signup-form a {
	color: #fff;
	text-decoration: underline;
}
.signup-form a:hover {
	text-decoration: none;
}
.signup-form form a {
	color: #5cb85c;
	text-decoration: none;
}	
.signup-form form a:hover {
	text-decoration: underline;
}  
</style>
<title>REGISTER</title>
</head>
<body>
<div>
	<nav class="navbar fixed-top navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Store Management System</a> 
		<span class="navbar-text"> 
			
		<a href="/DbmsProject/" style="margin: 15px;color:LightGray "> 
		Home
		</a>	
		<a href="admin" style="margin: 15px;color:LightGray "> 
		Admin
		</a>
		<a href="employee" style="margin: 15px;color:LightGray ""> 
		Employee
		</a> 
		
		<a href="customer" style="margin: 15px;color:LightGray ""> 
		Customer
		</a> 
		<a href="#" style="margin: 15px;">
		 Welcome, You are not logged in!
		</a> 
		</span>
	</nav>

  
</div>

<!-- ************************************************************************************** -->
<br>
<br>
<div class="container mt-4">
		<div class="text-center" style="color:white">${error}</div>
	<div class="signup-form">
	
    <form action="process_customer_form" method="post">
    <h2>Register</h2>
		<p class="hint-text">Create your account. It's free and only takes a minute.</p>
        <div class="form-group">
			<input type="text" class="form-control" name="name" placeholder="Name" required="required">  	
        </div>
        <div class="form-group">
        	<input type="email" class="form-control" name="email" placeholder="Email" required="required">
        </div>
		<div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password" minlength="8" required="required">
        </div>
		<div class="form-group">
            <input type="date" class="form-control" name="dob" placeholder="Enter Date of Birth" required="required">
        </div>  
        <div class="form-group">
            <input type="text" class="form-control" name="address" placeholder="Enter Address" required="required">
        </div>  
         <div class="form-group">
            <input type="tel" class="form-control" name="phone" placeholder="Enter Contact" required="required">
        </div>    
        <div class="form-group">
          <label class="col-sm-2 col-form-label" style="color:black"><h5>Gender</h5></label>
        	<div class="col-sm-10">
        	<div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline1" name="gender" value="male" class="custom-control-input" checked>
			  <label class="custom-control-label" for="customRadioInline1" style="color:black">Male</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline2" name="gender" value="female" class="custom-control-input">
			  <label class="custom-control-label" for="customRadioInline2" style="color:black">Female</label>
			</div>
			</div>
        </div>       
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Register Now</button>
        </div>
    </form>
		
   
	<div class="text-center" style="color:white">Already have an account? <a href="login_customer">Sign in</a></div>
</div>	
</div>
	

</body>
</html>