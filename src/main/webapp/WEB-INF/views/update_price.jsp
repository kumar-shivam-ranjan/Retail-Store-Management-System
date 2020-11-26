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
    <title>Update Price</title>
    
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
 <nav class="navbar navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Store Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

</nav>
    
    
    
<!-- ************************************************************************************************* -->
  
     <br><br><br>
	<div class="container text-center">
	<c:if test="${r==1}">
	<div class="jumbotron">
	  <h1 class="display-4">Price Updated</h1>
	  <p class="lead">You can check this out by searching the Product via ProductID</p>
	  <hr class="my-4">
	 	<a class="btn btn-primary btn-lg" href="/DbmsProject/EmployeeHome" role="button">Go to Home</a>
	</div>
	
	</c:if>
	
	<c:if test="${r==0}">
	
	  <div class="jumbotron">
		  <h1 class="display-4">OOPS!</h1>
		  <p class="lead">No Such Product Exists</p>
		  <hr class="my-4">
		  <p>Try Your Search with another productID and storeID</p>
		  	<a class="btn btn-primary btn-lg" href="/DbmsProject/EmployeeHome" role="button">Go to Home</a>
		</div>
	
	</c:if>
	</div>

	
  </body>
</html>