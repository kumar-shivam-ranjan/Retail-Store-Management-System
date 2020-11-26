<%@page import="springmvc.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />
<style>
html {
	scroll-behavior: smooth;
}

body {
	background-image: url("resources/image/bg.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>

<title>Admin Portal</title>
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
			<li class="nav-item active">
				<a class="nav-link" href="#employee"> Employee Section<span class="sr-only">(current)</span></a>
		    </li>
			<li class="nav-item"><a class="nav-link" href="#customers">
					Customers Section</a></li>
			<li class="nav-item"><a class="nav-link" href="#supplier">
					Supplier Section</a></li>
			<li class="nav-item"><a class="nav-link" href="#store">
					Store Section</a></li>


		</ul>

		<span class="navbar-text"> <a class="btn btn-outline-success" href="admin_profile">Profile</a>
		</span> &nbsp; &nbsp; <span class="navbar-text"> <a class="btn btn-primary" href="logout">Logout</a>
		</span>
	</div>
</nav>


<!-- ************************************************************************************************* -->





<!-- ___________________________________________________________________________________________________________________	 -->

<br>
<br>

<div class="container mt-5 text-center">
	<div class="jumbotron">
		<h1 class="display-4">
			Welcome User:<br>
		</h1>
		<h3>
			<span class="badge badge-success">${email}</span>
		</h3>
		<p class="lead">Status:Admin</p>
		<hr class="my-4">
		<p>Welcome to the E-Store</p>
	</div>
</div>

<!-- ___________________________________________________________________________________________________________________	 -->



<div class="container text-center">



	<!-- show Employee  -->
<div id="employee" class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">View all Employees</h5>
			<div id="view_emp" class="container text-center">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#show_emp">CLICK</button>

				<div class="modal fade" id="show_emp" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Employee
									List</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">




								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th scope="col">ID</th>
											<th scope="col">Name</th>
											<th scope="col">Email</th>
											<th scope="col">Joining Date</th>
											<th scope="col">Store Id</th>
											<th scope="col">Salary</th>
										</tr>
									</thead>


									<tbody>

										<c:forEach begin="0" end="${no}" var="par"
											items="${empList}">
											<tr>
												<th><c:out value="${par.id}" /></th>
												<td><c:out value="${par.name}" /></td>
												<td><c:out value="${par.email}" /></td>
												<td><c:out value="${par.joining_date}" /></td>
												<td><c:out value="${par.store_id}" /></td>
												<td><c:out value="${par.salary}" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>






							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>




		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>




</div>
<!-- ___________________________________________________________________________________ -->


<!-- Show Employee by StoreID -->

<br> 
<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Show Employee by StoreID</h5>


			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#show_emp_by_sid">Show</button>




			<div class="modal fade" id="show_emp_by_sid" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Employees Working in particular Store</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">



							<form action="show_emp_bysid" method="post">
							
							<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">StoreID</label>
									<div class="col-sm-10">
										<input type="number" class="form-control" id="inputPassword3"
											name="sid" required>
									</div>
								</div>
								
								<div class="text-center">
									<div class="text-center">
										<button type="submit" class="btn btn-success">ADD</button>
									</div>
								</div>



							</form>





						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>

						</div>
					</div>
				</div>
			</div>







		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>

</div>

















<!-- ____________________________________________________________________________________-->

<!-- Adding Employee	 -->



<br> 
<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Add Employee</h5>


			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#add_emp">ADD</button>




			<div class="modal fade" id="add_emp" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Add
								Employee</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">



							<form action="add_employee" method="post">
								<div class="form-group row">
									<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
									<div class="col-sm-10">
										<input type="email" name="email" class="form-control"
											id="inputEmail3" required>
									</div>
								</div>

								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputPassword3"
											name="name" required>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">Joining
										Date</label>
									<div class="col-sm-10">
										<input type="date" name="joining_date" class="form-control"
											id="inputPassword3" required>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">Store
										ID</label>
									<div class="col-sm-10">
										<input type="number" class="form-control"
											id="inputPassword3" name="store_id" required>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">Salary</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputPassword3"
											name="salary" required>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">Phone</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputPassword3"
											name="phone" required>
									</div>
								</div>


								<div class="text-center">
									<div class="text-center">
										<button type="submit" class="btn btn-success">ADD</button>
									</div>
								</div>



							</form>





						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>

						</div>
					</div>
				</div>
			</div>







		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>

</div>





















<!-- ________________________________________________________________________________________ -->

<!-- Updating Employee Salary -->

<br>

<div  class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Update Employee Salary</h5>
			<div class="container text-center">

				<form action="process_update" method="post">
					<div class="form-group mb-2">
						<input type="number" name="updid" value="Enter ID"
							placeholder="Enter ID" required>
					</div>
					<div class="form-group mx-sm-3 mb-2">
						<input type="number" name="updSal"
							placeholder="Enter new Salary" min="10000" required>
					</div>
					<button type="submit" class="btn btn-success">Update</button>
				</form>


			</div>
		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>
</div>




<!-- ____________________________________________________________________________________________________________ -->

<!-- Search Employee by ID -->
<br>
<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Search Employee by ID</h5>

			<div class="container text-center">
				<form action="search_by_empid" method="post">
					<div class="form-group mx-sm-3 mb-2">
						<input type="number" name="empID" placeholder="ID" required>
					</div>

					<button type="submit" class="btn btn-success">GO</button>
				</form>
			</div>
		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>

</div>
<br>


<!-- ___________________________________________________________________________________________-->



<!-- Search Employee by Name -->
<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Search Employee by Name</h5>
			<div class="container text-center">
				<form action="search_by_empname" method="post">
					<div class="form-group mx-sm-3 mb-2">
						<br> <input type="text" name="emp_name"
							placeholder="Enter name" required>
					</div>

					<button type="submit" class="btn btn-success">GO</button>
				</form>
			</div>
		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>
</div>

<br> 
<!-- ______________________________________________________________________________ -->

<!-- Deleting Employee -->

<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Delete Employee</h5>

			<div class="container text-center">
				<form action="delete_by_empid" method="post">
					<div class="form-group mx-sm-3 mb-2">
						<input type="number" name="empID" placeholder="ID" required>
					</div>

					<button type="submit" class="btn btn-success">GO</button>
				</form>
			</div>
		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>

</div>
<br> <br>





<!--_______________________________________________________________________________-->

<br><br><br>
<div id="customers" class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">View all Customers</h5>


			<div  class="container text-center">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#show_cust">CLICK</button>

				<div class="modal fade" id="show_cust" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Customer
									List</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">



								<table class="table">

									<thead class="thead-dark">
										<tr>
											<th scope="col">Id</th>
											<th scope="col">Name</th>
											<th scope="col">Email</th>
											<th scope="col">Gender</th>
											<th scope="col">Address</th>
											<th scope="col">Phone</th>
										</tr>
									</thead>


									<tbody>

										<c:forEach begin="0" end="${c_no}" var="tt" items="${cList}">
											<tr>
												<th><c:out value="${tt.id}" /></th>
												<td><c:out value="${tt.name}" /></td>
												<td><c:out value="${tt.email}" /></td>
												<td><c:out value="${tt.gender}" /></td>
												<td><c:out value="${tt.address}" /></td>
												<td><c:out value="${tt.phone}" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>





		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>

</div>













<!--_____________________________________________________________________________ -->

<br>







<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">View Customer's complaints</h5>

			<div id="view_customers" class="container text-center">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#show_complaint">CLICK</button>

				<div class="modal fade" id="show_complaint" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Complaint
									List</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">



								<table class="table">

									<thead class="thead-dark">
										<tr>
											<th scope="col">ComplaintID</th>
											<th scope="col">ProductID</th>
											<th scope="col">Description</th>
											<th scope="col">Date</th>
											<th scope="col">Customer Email</th>
										</tr>
									</thead>


									<tbody>

										<c:forEach begin="0" end="${complaint_no}" var="tt"
											items="${complaint_list}">
											<tr>
												<th><c:out value="${tt.complaint_id}" /></th>
												<td><c:out value="${tt.product_id}" /></td>
												<td><c:out value="${tt.desc}" /></td>
												<td><c:out value="${tt.complaint_date}" /></td>
												<td><c:out value="${tt.customer_email}" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>
</div>


<!-- ----------------------------------------------------------------------------------------------- -->

<!-- Customer's feedback -->


<br>
<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">View Customer's Feedback</h5>

			<div id="view_customers" class="container text-center">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#show_feedback">CLICK</button>

				<div class="modal fade" id="show_feedback" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Feedback
									List</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">



								<table class="table">

									<thead class="thead-dark">
										<tr>
											<th scope="col">FeedbackID</th>
											<th scope="col">Description</th>
											<th scope="col">Date</th>
											<th scope="col">Customer Email</th>
							
										</tr>
									</thead>


									<tbody>

										<c:forEach begin="0" end="${f_no}" var="tt"
											items="${feedback}">
											<tr>
												<th><c:out value="${tt.feedback_id}" /></th>
												<td><c:out value="${tt.desc}" /></td>
												<td><c:out value="${tt.date}" /></td>
												<td><c:out value="${tt.email}" /></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>
</div>







<!-- __________________________________________________________________________________________ -->

<br><br><br><br><br>
<div id="supplier" class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">View Supplier's List</h5>



			<div id="view_customers" class="container text-center">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#supplier_l">CLICK</button>

				<div class="modal fade" id="supplier_l" tabindex="-1">
					<div class="modal-dialog modal-lg" style="max-width: 80%;"
						role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Supplier
									List</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">



								<table class="table">

									<thead class="thead-dark">
										<tr>
											<th scope="col">ID</th>
											<th scope="col">Name</th>
											<th scope="col">Email</th>
											<th scope="col">Address</th>
											<th scope="col">Phone</th>
											<th scope="col">Delete</th>
										</tr>
									</thead>


									<tbody>

										<c:forEach begin="0" end="${supplier_list_size}" var="tt"
											items="${supplier_list}">
											<tr>
												<th><c:out value="${tt.supplier_id}" /></th>
												<td><c:out value="${tt.name}" /></td>
												<td><c:out value="${tt.email}" /></td>

												<td><c:out value="${tt.address}" /></td>
												<td><c:out value="${tt.phone}" /></td>
												<td>
												<a href="delete_supplier/${tt.supplier_id}"> 
												<i class="fas fa-trash-alt warning" style="color:red"></i>
												</a>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>


		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>
</div>


<!-- ___________________________________________________________________________________________ -->


<!-- Add supplier -->

<br> 
<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Add Supplier</h5>


			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#add_supplier">ADD</button>




			<div class="modal fade" id="add_supplier" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Add
								Supplier</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">



							<form action="add_supplier_admin" method="post">
							
							<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">Name</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="inputPassword3"
											name="name" required>
									</div>
								</div>
								<div class="form-group row">
									<label  class="col-sm-2 col-form-label">Email</label>
									<div class="col-sm-10">
										<input type="email" name="email" class="form-control" required>
									</div>
								</div>

								
								<div class="form-group row">
									<label  class="col-sm-2 col-form-label">Address</label>
									<div class="col-sm-10">
										<input type="text" name="address" class="form-control" required>
									</div>
								</div>
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">DOB</label>
									<div class="col-sm-10">
										<input type="date" class="form-control"
											id="inputPassword3" name="dob" required>
									</div>
								</div>
				
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">Phone</label>
									<div class="col-sm-10">
										<input type="tel" class="form-control" id="inputPassword3"
											name="phone" required>
									</div>
								</div>


								<div class="text-center">
									<div class="text-center">
										<button type="submit" class="btn btn-success">ADD</button>
									</div>
								</div>



							</form>





						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>

						</div>
					</div>
				</div>
			</div>







		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>

</div>



























<!-- _______________________________________________________________________________ -->
<br>

<br><br><br><br>
<div id="store" class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">View all Stores</h5>
			<div id="view_stores" class="container text-center">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#show_stores">CLICK</button>

				<div class="modal fade" id="show_stores" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					
					<div class="modal-dialog modal-lg">
					
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Stores
									Info</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">


								<table class="table">
									<thead class="thead-dark">
										<tr>
											<th scope="col">Store Id</th>
											<th scope="col">State</th>
											<th scope="col">City</th>
											<th scope="col">Road No</th>
											<th scope="col">Store License No</th>
											<th scope="col">Delete</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach begin="0" end="${s_no}" var="store"
											items="${sList}">
											<tr>
												<th><c:out value="${store.store_id}"></c:out></th>
												<td><c:out value="${store.state}"></c:out></td>
												<td><c:out value="${store.city}"></c:out></td>
												<td><c:out value="${store.road_no}"></c:out></td>
												<td><c:out value="${store.store_license_no}"></c:out></td>
												<td>
												<a href="delete_store/${store.store_id}"> 
												<i class="fas fa-trash-alt warning" style="color:red"></i>
												</a>
												</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>


							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>
</div>



<!-- _________________________________________________________________________________________
-->

<br>
<!-- Add Store -->
<div class="col d-flex justify-content-center">

	<div class="card text-center" style="width: 28rem">
		<div class="card-header">Featured</div>
		<div class="card-body">
			<h5 class="card-title">Add Store</h5>


			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#add_store">ADD</button>




			<div class="modal fade" id="add_store" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Add
								Store</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">



							<form action="add_store_admin" method="post">
							
							
							
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">State</label>
									<div class="col-sm-10">
										<select  class="form-control" name="state">
									        <option value="Andhra Pradesh" selected>Andhra Pradesh</option>
								        	<option value="Arunachal Pradesh">Arunachal Pradesh</option>
								         	<option value="Assam">Assam</option>
								         	<option value="Bihar">Bihar</option>
							           		<option value="Chhattisgarh">Chhattisgarh</option>
							            	<option value="Goa">Goa</option>
							             	<option value="Haryana">Haryana</option>
							             	<option value="Gujarat">Gujarat</option>
						             		<option value="Jammu and Kashmir">Jammu and Kashmir</option>
							             	<option value="Jharkhand">Jharkhand</option>
						             		<option value="Himachal Pradesh">Himachal Pradesh</option>
						             		<option value="Karnataka">Karnataka</option>
						             		<option value="Kerala">Kerala</option>
							             	<option value="Madya Pradesh">Madya Pradesh</option>
						             		<option value="Maharashtra">Maharashtra</option>
						             		<option value="Manipur">Manipur</option>
							             	<option value="Meghalaya">Meghalaya</option>
						             		<option value="Mizoram">Mizoram</option>
						             		<option value="Nagaland">Nagaland</option>
							             	<option value="Orissa">Orissa</option>
						             		<option value="Punjab">Punjab</option>
						             		<option value="Rajasthan">Rajasthan</option>
							             	<option value="Sikkim">Sikkim</option>
						             		<option value="Tamil Nadu">Tamil Nadu</option>
						             		<option value="Telagana">Telagana</option>
							             	<option value="Tripura">Tripura</option>
						             		<option value="Uttaranchal">Uttaranchal</option>
						             		<option value="Uttar Pradesh">Uttar Pradesh</option>
						             		<option value="West Bengal">West Bengal</option>						             								             								             		
									      </select>
									</div>
								</div>

								<div class="form-group row">
									<label  class="col-sm-2 col-form-label">City</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" name="city" required>
									</div>
								</div>
								
								
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">Road No</label>
									<div class="col-sm-10">
										<input type="text" name="road_no" class="form-control" required>
									</div>
								</div>
								
								
								<div class="form-group row">
									<label for="inputPassword3" class="col-sm-2 col-form-label">License No</label>
									<div class="col-sm-10">
										<input type="text"  minlength="8" class="form-control" name="store_license_no" required>
									</div>
								</div>
							


								<div class="text-center">
									<div class="text-center">
										<button type="submit" class="btn btn-success">ADD</button>
									</div>
								</div>



							</form>





						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>

						</div>
					</div>
				</div>
			</div>







		</div>
		<div class="card-footer text-muted">2 days ago</div>
	</div>

</div>
















<!-- -------------------------------------------------------------------------------------- -->









</div>



<br>
<br>
<br>
<br>
<br>













<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>



