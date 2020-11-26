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
    <title>Product Added</title>
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
    <br>
    
	<div class="container text-center">
	
	<c:if test="${r==1}">
	
	<div class="jumbotron">
	  <h1 class="display-4">Product Added to your Cart</h1>
	  <p class="lead">View Your Cart and keep looking for other products</p>
	  <hr class="my-4">
	</div>
	<a class="btn btn-primary btn-lg" href="/DbmsProject/CustomerHome" role="button">Go to Home</a>
	
	</c:if>
	
	<c:if test="${r==0}">
	
	  <div class="jumbotron">
		  <h1 class="display-4">OOPS!</h1>
		  <p class="lead">Enter Correct Values of ProductID to add product to your Cart</p>
		  <hr class="my-4">
		  <p>No such product Available</p>
		</div>
	<a class="btn btn-primary btn-lg" href="/DbmsProject/CustomerHome" role="button">Go to Home</a>
	
	</c:if>
	
	<c:if test="${r==-1}">
	
	  <div class="jumbotron">
		  <h1 class="display-4">OOPS!</h1>
		  <p class="lead">You Cannot add this product to your cart</p>
		  <hr class="my-4">
		  <p>Choose another store</p>
		</div>
	<a class="btn btn-primary btn-lg" href="/DbmsProject/CustomerHome" role="button">Go to Home</a>
	
	</c:if>
	</div>
	
	

	
  </body>
</html>