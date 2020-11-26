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
<title>Employee Profile</title>

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




	<br>
	<br>
	<br>
	<div class="container text-center">




		<div class="card">
			<div class="card-header">
				<h4>Employee Profile</h4>
			</div>
			<div class="card-body">

				<form action="save_employee_changes" method="post">

					<div class="form-group">
						<h6><label for="inputEmail4">Email</label> </h6>
						<input type="email"
							class="form-control" name="email" readonly class="plaintext"
							value="${employee.email}">
					</div>
					<div class="form-group">
						<h6><label for="inputEmail4">Name</label> </h6><input type="text"
							name="name" class="form-control" value="${employee.name}">
					</div>

					<div class="form-group">
						<h6><label for="inputAddress">Joining Date</label></h6> <input type="text"
							class="form-control" name="joining_date"
							value="${employee.joining_date}" readonly>
					</div>

					<div class="form-group">

						<h6><label for="inputCity">StoreID</label></h6> <input type="number"
							name="store_id" class="form-control" value="${employee.store_id}"
							readonly>
					</div>

					<div class="form-group">
						<h6><label for="inputCity">Salary</label></h6> <input type="number"
							name="salary" class="form-control" value="${employee.salary}"
							readonly>
					</div>

					<div class="form-group">
						<h6><label for="inputCity">Phone</label></h6> <input type="text"
							name="phone" class="form-control" value="${employee.phone}">
					</div>


					<button type="submit" class="btn btn-primary">Save changes</button>
				</form>





			</div>
		</div>


		<br> <br> <br> <br>







	</div>
</body>
</html>