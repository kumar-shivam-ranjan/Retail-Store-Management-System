<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<title>Customer Profile</title>

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




	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="container text-center">




		<div class="card">
			<div class="card-header"><h4>Product Complaint</h4></div>
			<div class="card-body">

				<form action="/DbmsProject/complaint" method="post">
					<div class="text-center">
						<div class="form-group">
							<label for="inputEmail4">ProductID</label> 
							<input type="number" class="form-control" name="product_id" readonly class="plaintext" value="${product.product_id}">
						</div>
						<div class="form-group">
							<label for="inputEmail4">StoreID</label> 
							<input type="number" name="store_id" class="form-control" readonly value="${product.store_id}">
						</div>
			
					</div>
						<div class="form-group">
						<h5><label>Description</label></h5>
						<textarea class="form-control" name="desc" rows="5" required></textarea>
						</div>
					<div class="form-group">
						<label for="inputAddress">Date</label> 
						<input type="date"
							class="form-control" name="date" >
					</div>
				
					  <div class="form-group">
						<div class="form-group">
							<label for="inputCity">Customer Email</label>
							 <input type="text" name="cust_email" class="form-control"  readonly value="${email}">
						</div>
					
					</div>
					<button type="submit" class="btn btn-success">Save changes</button>
				</form>





			</div>
		</div>

<br><br>

<br><br>


<br><br>








	</div>
</body>
</html>