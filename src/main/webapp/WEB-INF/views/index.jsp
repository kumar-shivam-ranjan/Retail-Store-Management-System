<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
  background-image: url("resources/image/b2.jpeg");
  background-repeat: no-repeat;
  background-attachment: fixed; 
  background-size: 100% 100%;
}
 @import url('https://fonts.googleapis.com/css?family=Rubik&display=swap');


 .container-fluid {
     overflow: hidden;
     margin-top: 250px;
     background: #262626;
     color: #627482 !important;
     margin-bottom: 0;
     padding-bottom: 0
 }

 small {
     font-size: calc(12px + (15 - 12) * ((100vw - 360px) / (1600 - 360))) !important
 }

 .bold-text {
     color: #989c9e !important
 }

 .mt-55 {
     margin-top: calc(50px + (60 - 50) * ((100vw - 360px) / (1600 - 360))) !important
 }

 h3 {
     font-size: calc(34px + (40 - 34) * ((100vw - 360px) / (1600 - 360))) !important
 }

 .social {
     font-size: 21px !important
 }

 .rights {
     font-size: calc(10px + (12 - 10) * ((100vw - 360px) / (1600 - 360))) !important
 }
</style>
    
    
    
  </head>
    <body>
 <!-- *********************************************************************************************   -->
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

    
    
    
<!-- ************************************************************************************************* -->
    <br>
    <br>
    <br>
    <div class="container text-center">
  		<h4 style="color:white">Welcome to the Retail Store Management System</h4>
  		<h5 style="color:white">
  		<marquee width="60%" direction="right" height="50px">
		Jinjaa Toy Store
		</marquee>
		</h5>
  	</div>
  	<div class="container text-center">
  	 <div class="card-deck"  style="width:70rem;height:12rem">
  <div class="card">
    <img class="card-img-top" src="resources/image/admin1.jpg">
    <div class="card-body">
      <h5 class="card-title">Admin Portal</h5>
      <p class="card-text">This Portal is for owner of the business enterprise</p>
      <a class="btn btn-outline-success btn-lg"  href="admin">Admin Portal</a>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="resources/image/employee.png" height="220">
    <div class="card-body">
      <h5 class="card-title">Employee Portal</h5>
      <p class="card-text">This Portal is for the employees of this business enterprise .</p>
      <a class="btn btn-outline-success btn-lg" href="employee">Employee Portal</a>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="resources/image/customers.jpg">
    <div class="card-body">
      <h5 class="card-title">Customer Portal</h5>
      <p class="card-text">This Portal is for customer who can register and login to purchase items.</p>
      <a class="btn btn-outline-success btn-lg" href="customer">Customer Portal</a>
      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
    </div>
  </div>

   </div>
  	</div>
    	
  	<br>
 <!-- ****************************************************************************************************** -->

<!-- Footer -->


 <div class="container-fluid pb-0 mb-0 justify-content-center text-light ">
     <footer>
         <div class="row my-5 justify-content-center py-5">
             <div class="col-11">
                 <div class="row ">
                     <div class="col-xl-8 col-md-4 col-sm-4 col-12 my-auto mx-auto a">
                         <h3 class="text-muted mb-md-0 mb-5 bold-text">Jinjaa.</h3>
                     </div>
                     <div class="col-xl-2 col-md-4 col-sm-4 col-12">
                         <h6 class="mb-3 mb-lg-4 bold-text "><b>MENU</b></h6>
                         <ul class="list-unstyled">
                             <li>Home</li>
                             <li>About</li>
                             <li>Blog</li>
                             <li>Portfolio</li>
                         </ul>
                     </div>
                     <div class="col-xl-2 col-md-4 col-sm-4 col-12">
                         <h6 class="mb-3 mb-lg-4 text-muted bold-text mt-sm-0 mt-5"><b>ADDRESS</b></h6>
                         <p class="mb-1">605, RATAN ICON BUILDING</p>
                         <p>SEAWOODS SECTOR</p>
                     </div>
                 </div>
                 <div class="row ">
                     <div class="col-xl-8 col-md-4 col-sm-4 col-auto my-md-0 mt-5 order-sm-1 order-3 align-self-end">
                         <p class="social text-muted mb-0 pb-0 bold-text"> <span class="mx-2"><i class="fa fa-facebook" aria-hidden="true"></i></span> <span class="mx-2"><i class="fa fa-linkedin-square" aria-hidden="true"></i></span> <span class="mx-2"><i class="fa fa-twitter" aria-hidden="true"></i></span> <span class="mx-2"><i class="fa fa-instagram" aria-hidden="true"></i></span> </p><small class="rights"><span>&#174;</span> Pepper All Rights Reserved.</small>
                     </div>
                     <div class="col-xl-2 col-md-4 col-sm-4 col-auto order-1 align-self-end ">
                         <h6 class="mt-55 mt-2 text-muted bold-text"><b>ISHU KUMAR</b></h6><small> <span><i class="fa fa-envelope" aria-hidden="true"></i></span> ishu1234@gmail.com</small>
                     </div>
                     <div class="col-xl-2 col-md-4 col-sm-4 col-auto order-2 align-self-end mt-3 ">
                         <h6 class="text-muted bold-text"><b>RISHABH SHEKHAR</b></h6><small><span><i class="fa fa-envelope" aria-hidden="true"></i></span> rishab@gmail.com</small>
                     </div>
                 </div>
             </div>
         </div>
     </footer>
 </div>


















<!-- *************************************************************************** -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>