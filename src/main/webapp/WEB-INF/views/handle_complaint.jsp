<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <title>Complaint</title>
    <style>
  body {
  background-image: url("resources/image/bg.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
}
</style>
    
    
  </head>
    <body>
       <!-- *********************************************************************************************   -->
 
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Store Management System</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
			</ul>
			<span class="navbar-text"> <a class="btn btn-primary" href="logout_customer">Logout</a>
			</span>
		</div>
	</nav>

    
    
<!-- ************************************************************************************************* -->

    <br><br><br><br><br>
	<div class="container text-center">
	<div class="jumbotron">
	  <h1 class="display-4">Complaint filed Successfully</h1>
	  <p class="lead">Your request will be processed soon</p>
	  <hr class="my-4">
	  <a class="btn btn-primary btn-lg" href="/DbmsProject/CustomerHome" role="button">Go to Home</a>
    
	</div>
	</div>
	
	

	
  </body>
</html>