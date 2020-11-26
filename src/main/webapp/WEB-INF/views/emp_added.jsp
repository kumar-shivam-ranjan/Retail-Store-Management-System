<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <title>e-Market</title>
    
        
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
			<span class="navbar-text"> <a class="btn btn-primary" href="logout">Logout</a>
			</span>
		</div>
	</nav>
    
    
<!-- ************************************************************************************************* -->
    
    <br><br>
     <br><br>
    <c:if test="${r==1}">
    
     <div class="container text-center">
    
     <div class="jumbotron">
	  <h1 class="display-4">Employee Added</h1>
	  <p class="lead">You can check this out by in the Employee List of your store</p>
	  <hr class="my-4">
	 <a class="btn btn-primary btn-lg" href="/DbmsProject/AdminHome" role="button">Go to Home</a>
		
	</div> 
    
    </div>
    
    </c:if>
   
   <c:if test="${r==0}">
    
     <div class="container text-center">
    
     <div class="jumbotron">
	  <h1 class="display-4">Employee cannot be Added</h1>
	  <p class="lead">Email must be unique</p>
	  <hr class="my-4">
	  <a class="btn btn-primary btn-lg" href="/DbmsProject/AdminHome" role="button">Go to Home</a>
		
	</div> 
    
    </div>
    
    </c:if>
    <c:if test="${r==2}">
    
     <div class="container text-center">
    
     <div class="jumbotron">
	  <h1 class="display-4">Employee cannot be Added</h1>
	  <p class="lead">No store with the store ID you entered exists</p>
	  <hr class="my-4">
	  <a class="btn btn-primary btn-lg" href="/DbmsProject/AdminHome" role="button">Go to Home</a>
		
	</div> 
    
    </div>
    
    </c:if>
   
    
   
    

  


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>