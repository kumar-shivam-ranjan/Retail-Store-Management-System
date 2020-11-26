<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />
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
	<nav class="navbar fixed-top navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Store Management System</a> <span
			class="navbar-text"> 
			<a class="btn btn-outline-success" href="employee_profile">Profile</a>
			&nbsp; &nbsp; <a class="btn btn-primary" href="employee_logout">Logout</a>
		</span>

	</nav>



	<!-- ************************************************************************************************* -->
	<br>
	<br>
	<div class="container mt-5 text-center">
		<div class="jumbotron">
			<h1 class="display-4">
				Welcome User:<br>
			</h1>
			<h3>
				<span class="badge badge-success">${employee.email}</span>
			</h3>
			<p class="lead">Status:Employee</p>
			<hr class="my-4">
			<p>Welcome to the E-Store</p>
		</div>
	</div>

	<!--  *************************************************************************************** -->


	<div class="container">
		<div class="container text-center">



			<div class="col d-flex justify-content-center">

				<div class="card text-center" style="width: 28rem">
					<div class="card-header">Featured</div>
					<div class="card-body">
						<h5 class="card-title">View all Products in your Store</h5>



						<button type="button" class="btn btn-outline-primary"
							data-toggle="modal" data-target="#show_products">Click</button>

						<div class="modal fade" id="show_products" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Product
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
													<th scope="col">product_id</th>
													<th scope="col">store_id</th>
													<th scope="col">Expiry_date</th>
													<th scope="col">price</th>
													<th scope="col">supplier_id</th>
													<th scope="col">category</th>
													<th scope="col">Delete</th>
													<th scope="col">Update</th>
												</tr>
											</thead>


											<tbody>

												<c:forEach begin="0" end="${p_no}" var="par"
													items="${p_list}">
													<tr>
														<th><c:out value="${par.product_id}" /></th>
														<td><c:out value="${par.store_id}" /></td>
														<td><c:out value="${par.expiry_date}" /></td>
														<td><c:out value="${par.price}" /></td>
														<td><c:out value="${par.supplier_id}" /></td>
														<td><c:out value="${par.category}" /></td>
														<td>
														<a href="delete_product_item/${par.product_id}"> 
														<i class="fas fa-trash-alt warning" style="color:red"></i>
														</a>
														</td>
														<td>
														<a href="update_product_item/${par.product_id}"> 
														<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
														  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
														  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
														</svg>
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
					<div class="card-footer text-muted">2 days ago</div>
				</div>

			</div>

		</div>




		<!-- ************************************************************************************* -->
		<br>







		<div class="container text-center">


			<div class="col d-flex justify-content-center">

				<div class="card text-center" style="width: 28rem">
					<div class="card-header">Featured</div>
					<div class="card-body">
						<h5 class="card-title">Add Product to your store</h5>





						<button type="button" class="btn btn-outline-primary"
							data-toggle="modal" data-target="#add_products">Click</button>

						<div class="modal fade" id="add_products" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Add
											Product</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">


										<form action="add_product" method="post">
											<div class="form-group">
												<h5>
													<label>Store ID</label>
												</h5>
												<input type="text" name="store_id" class="form-control"
													readonly class="plaintext" value="${store_id}">
											</div>
											<div class="form-group">
												<h5>
													<label for="exampleInputPassword1">Expiry Date</label>
												</h5>
												<input type="date" name="expiry_date" class="form-control"
													id="exampleInputPassword1" required>
											</div>
											<div class="form-group">
												<h5>
													<label>Price</label>
												</h5>
												<input type="number" name="price" class="form-control"
													min="1000" required>
											</div>
											<div class="form-group">
												<h5>
													<label>Supplier ID</label>
												</h5>
												<input type="number" name="supplier_id" class="form-control"
													required>
											</div>
											<div class="form-group">
												<h5>
													<label>Category</label>
												</h5>
												<input type="text" name="category" class="form-control"
													required>
											</div>
											<button type="submit" class="btn btn-success">ADD</button>
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

		</div>
	</div>










	<!-- ************************************************************************************ -->
	<br>

	<div class="container text-center">






		<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Update Product Price in your Store</h5>


					<button type="button" class="btn btn-outline-primary"
						data-toggle="modal" data-target="#upd_p">Click</button>

					<div class="modal fade" id="upd_p" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Update
										Product</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">



									<form action="upd_price" method="post" class="form">
										<div class="form-group mx-sm-3 mb-2">
											<input type="number" name="p_id" class="form-control"
												placeholder="Enter ProductID" required>
										</div>
										<div class="form-group mx-sm-3 mb-2">
											<input type="number" name="new_price" class="form-control"
												placeholder="Enter new Price" min="1000" required>
										</div>
										<div class="form-group mx-sm-3 mb-2">
											<span class="badge badge-light">Store ID</span> <input
												type="text" name="store_id" class="form-control" readonly
												class="plaintext" id="staticEmail2" value="${store_id}">
										</div>
										<button type="submit" class="btn btn-primary mb-2">Update</button>
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
	</div>

	<br>



	<!-- ********************************************************************************** -->

	<div class="container text-center">




		<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Delete Product in your Store</h5>






					<button type="button" class="btn btn-outline-primary" data-toggle="modal"
						data-target="#del_p">Click</button>

					<div class="modal fade" id="del_p" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">Delete
										Product</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">

									<form action="delete_product" method="post" class="form">
										<div class="form-group mx-sm-3 mb-2">
											<input type="number" class="form-control" name="pid"
												placeholder="Enter ProductID" required>
										</div>
										<div class="form-group mx-sm-3 mb-2">
											<span class="badge badge-light">Store ID</span><br> <input
												type="text" class="form-control" name="sid" readonly
												class="plaintext" width="50px" id="staticEmail2"
												value="${store_id}">
										</div>
										<button type="submit" class="btn btn-primary mb-2">Delete</button>
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
	</div>


	<br>


	<!-- ***************************************************************************************** -->


	<div class="container text-center">




		<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">View Customer's Order in your Store</h5>





					<button type="button" class="btn btn-outline-primary" data-toggle="modal"
						data-target="#view_orders_in_your_store">Click</button>

					<div class="modal fade" id="view_orders_in_your_store"
						tabindex="-1" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel">View
										Customer's Order in your Store</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">



									<table class="table">
										<thead class="thead-dark">
											<tr>
												<th scope="col">OrderID</th>
												<th scope="col">Email</th>
												<th scope="col">ProductID</th>
												<th scope="col">Quantity</th>
												<th scope="col">Total Price</th>
												<th scope="col">Date</th>
											</tr>
										</thead>


										<tbody>

											<c:forEach begin="0" end="${oListSize}" var="par"
												items="${oList}">
												<tr>
													<th><c:out value="${par.order_id}" /></th>
													<td><c:out value="${par.email}" /></td>
													<td><c:out value="${par.product_id}" /></td>
													<td><c:out value="${par.quantity}" /></td>
													<td><c:out value="${par.total_price}" /></td>
													<td><c:out value="${par.date}" /></td>
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
				<div class="card-footer text-muted">2 days ago</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>






	<!--  ********************************************************************************* -->













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