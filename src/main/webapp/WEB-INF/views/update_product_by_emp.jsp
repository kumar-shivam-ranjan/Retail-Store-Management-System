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
  background-image: url("https://i.ibb.co/dM8ztLR/bg.jpg");
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
    <br><br>
<div class="container text-center">

<div class="card text-center">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Update product Details</h5>
    <br>
<form action="/DbmsProject/product_update_emp"  method="post">
  <div class="form-group text-center">
    <label for="exampleInputEmail1">ProductID</label>
    <input type="number"  name="product_id" class="form-control" id="exampleInputEmail1" value="${p.product_id}" readonly> 
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">StoreID</label>
    <input type="number" name="store_id" class="form-control" id="exampleInputEmail1" value="${p.store_id}" readonly> 
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">ExpiryDate</label>
    <input type="text" name="expiry_date" class="form-control" id="exampleInputEmail1" value="${p.expiry_date}" readonly> 
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Price</label>
    <input type="number" name="price" class="form-control" id="exampleInputEmail1" value="${p.price}"> 
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">SupplierID</label>
    <input type="number" name="supplier_id" class="form-control" id="exampleInputEmail1" value="${p.supplier_id}" readonly> 
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Category</label>
    <input type="text" name="category" class="form-control" id="exampleInputEmail1" value="${p.category}" > 
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
  </div>
  <div class="card-footer text-muted">
    2 days ago
  </div>
  
</div>


<br>
  <br>
  <br> <br>
  <br>
  <br>

	
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  </body>
</html>