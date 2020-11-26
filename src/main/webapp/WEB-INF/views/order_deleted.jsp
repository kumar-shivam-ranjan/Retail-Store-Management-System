<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<title>Customer Page</title>
<style>

  body {
  background-image:  url("https://i.ibb.co/hZyGM76/bg.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
}

</style>
</head>
<body> 
  <nav class="navbar fixed-top navbar-dark bg-dark">
		<a class="navbar-brand" href="/DbmsProject/CustomerHome">Store Management System</a> <span
			class="navbar-text"> 
		 <a class="btn btn-primary" href="logout_customer">Logout</a>
		</span>
	</nav>
<br>
<br>
<br>
<br>
	<div class="container text-center">
	
	<div class="jumbotron">
	  <h1 class="display-4">Order Deleted</h1>
	  <p class="lead">You can check this out by Looking at your orders</p>
	  <hr class="my-4">
	 <a class="btn btn-primary btn-lg" href="/DbmsProject/CustomerHome" role="button">Go to Home</a>
	</div>
	
	</div>






</body>
</html>
 