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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA=="
	crossorigin="anonymous" />
<title>Customer Page</title>
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
		<a class="navbar-brand" href="#">Store Management System</a> 
		<span class="navbar-text"> 
		
		<a data-toggle="modal" data-target="#show_cart_items" style="margin: 15px;"> 
		<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
		  <path fill-rule="evenodd" d="M11.354 5.646a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L8 8.293l2.646-2.647a.5.5 0 0 1 .708 0z"/>
		</svg>
		Cart
		</a> 
		
		<a data-toggle="modal" data-target="#del_o" style="margin: 15px;"> 
		<i class="fas fa-trash-alt" style="color: white"></i>
		Delete Order
		</a> 
		<a data-toggle="modal" data-target="#show_o" style="margin: 15px;">
				<i class="fas fa-cart-plus" style="color: white"> </i>Orders
		</a>
		<a  href="show_cust_profile" style="margin: 15px;"> 
		<svg width="2em" height="1.5em" viewBox="0 0 16 16" class="bi bi-person-dash" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
		  <path fill-rule="evenodd" d="M8 5a2 2 0 1 1-4 0 2 2 0 0 1 4 0zM6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm6 5c0 1-1 1-1 1H1s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C9.516 10.68 8.289 10 6 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10zM11 7.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5z"/>
		</svg>
		Profile
		</a> 
		<a class="btn btn-primary" href="logout_customer">Logout</a>
		</span>
	</nav>


	<br><br>
	<!-- **************************************************************** -->
	<div class="container mt-5 text-center">
		<div class="jumbotron">
			<h1 class="display-4">
				Welcome User:<br>
			</h1>
			<h3>
				<span class="badge badge-success">${email}</span>
			</h3>
			<p class="lead">Status:Customer</p>
			<hr class="my-4">
			<p>Welcome to the E-Store</p>
		</div>
	</div>
	<!-- **************************************************************** -->


	<div class="container">


		<!-- ****************************************************************************** -->

		<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Show all Products</h5>


					<div class="container text-center">
						<button type="button" class="btn btn-outline-primary"
							data-toggle="modal" data-target="#show_products">Show</button>

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
													<th scope="col">Complaint?</th>
												</tr>
											</thead>
											<c:forEach begin="0" end="${product_size}" var="par"
												items="${p_list}">
												<tr>
													<th><c:out value="JINJAA${par.product_id}" /></th>
													<td><c:out value="${par.store_id}" /></td>
													<td><c:out value="${par.expiry_date}" /></td>
													<td class="font-weight-bold">&#x20B9; ${par.price}</td>
													<td><c:out value="${par.supplier_id}" /></td>
													<td><c:out value="${par.category}" /></td>
													<td >
													<a href="file_complaint_cus/${par.product_id}">
													<i class="fa fa-thumbs-down" style="font-size:20px;color:red"></i>
													</a>
													
													</td>
												</tr>
											</c:forEach>

											<tbody>
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
<!-- ******************************************************************************************** -->
<!-- Filter Product By Store -->
<br>
	<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Filter Product By Store</h5>



					<div class="container text-center">
						<button type="button" class="btn btn-outline-primary"
							data-toggle="modal" data-target="#filter_product_by_store">Search</button>

						<div class="modal fade" id="filter_product_by_store" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">View Products in particular Store</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">


										<form action="filter_product" method="post">

											<div class="form-group">
												<h5>
													<label>Store ID</label>
												</h5>
												<input type="number" name="store_id" class="form-control"
													required>
											</div>
											<button type="submit" class="btn btn-success">Submit</button>
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


				</div>
				<div class="card-footer text-muted">2 days ago</div>
			</div>




		</div>




<!-- *************************************************************************** -->


		<br> <br>



		<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Show all Stores</h5>




					<div class="container text-center">
						<button type="button" class="btn btn-outline-primary"
							data-toggle="modal" data-target="#show_stores">Show</button>

						<div class="modal fade" id="show_stores" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Stores
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
													<th scope="col">Store Id</th>
													<th scope="col">city</th>
													<th scope="col">State</th>
													<th scope="col">Road No</th>
												</tr>
											</thead>
											<c:forEach begin="0" end="${store_no}" var="par"
												items="${store_list}">
												<tr>
													<th><c:out value="${par.store_id}" /></th>
													<td><c:out value="${par.state}" /></td>
													<td><c:out value="${par.city}" /></td>
													<td><c:out value="${par.road_no}" /></td>
												</tr>
											</c:forEach>

											<tbody>
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

		<!-- ************************************************************************************** -->
		<br> <br>


		<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Your Feedback</h5>






					<div class="container text-center">
						<button type="button" class="btn btn-outline-primary"
							data-toggle="modal" data-target="#fc">Proceed</button>

						<div class="modal fade" id="fc" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Your Feedback</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">


										<form action="feedback" method="post">
											<div class="form-group">
												<h5>
													<label>Description</label>
												</h5>
												<textarea class="form-control" name="desc" rows="5" required></textarea>
											</div>

											<div class="form-group">
												<h5>
													<label>Date</label>
												</h5>
												<input type="date" name="date"
													class="form-control"  required>
											</div>

											<div class="form-group">
												<h5>
													<label for="exampleInputPassword1">Customer Email</label>
												</h5>
												<input type="email" name="email"
													class="form-control" readonly class="plaintext"
													value="${email}">
											</div>


											<button type="submit" class="btn btn-success">Submit</button>
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

				</div>
				<div class="card-footer text-muted">2 days ago</div>
			</div>




		</div>


		<!-- *************************************************************************************** -->


		<!-- Add to Cart -->
		<br> <br>

		<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Add item to Cart</h5>



					<div class="container text-center">
						<button type="button" class="btn btn-outline-primary"
							data-toggle="modal" data-target="#add_to_cart">Add</button>

						<div class="modal fade" id="add_to_cart" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Add to
											Cart</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">


										<form action="add_to_cart" method="post">

											<div class="form-group">
												<h5>
													<label>Product ID</label>
												</h5>
												<input type="number" name="product_id" class="form-control"
													required>
											</div>
											<div class="form-group">
												<h5>
													<label>Quantity</label>
												</h5>
												<input type="number" name="quantity" class="form-control"
													required>
											</div>
											<div class="form-group">
												<h5>
													<label for="exampleInputPassword1">Customer Email</label>
												</h5>
												<input type="email" name="customer_email"
													class="form-control" readonly class="plaintext"
													value="${email}">
											</div>

											<button type="submit" class="btn btn-success">Submit</button>
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


				</div>
				<div class="card-footer text-muted">2 days ago</div>
			</div>




		</div>

		<!-- *********************************************************************************************** -->

		<br> <br>
		<!-- Buy product -->



		<div class="col d-flex justify-content-center">

			<div class="card text-center" style="width: 28rem">
				<div class="card-header">Featured</div>
				<div class="card-body">
					<h5 class="card-title">Buy Product</h5>






					<div class="container text-center">
						<button type="button" class="btn btn-outline-primary"
							data-toggle="modal" data-target="#bp">Buy</button>

						<div class="modal fade" id="bp" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title" id="exampleModalLabel">Buy
											Product</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">


										<form action="buy_product" method="post">

											<div class="form-group">
												<h5>
													<label>Product ID</label>
												</h5>
												<input type="number" name="product_id" class="form-control"
													required>
											</div>
											<div class="form-group">
												<h5>
													<label>Quantity</label>
												</h5>
												<input type="number" name="quantity" class="form-control"
													required>
											</div>
											<div class="form-group">
												<h5>
													<label for="exampleInputPassword1">Customer Email</label>
												</h5>
												<input type="email" name="customer_email"
													class="form-control" readonly class="plaintext"
													value="${email}">
											</div>

											<button type="submit" class="btn btn-success">Submit</button>
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

				</div>
				<div class="card-footer text-muted">2 days ago</div>
			</div>




		</div>
		
		
		
		



	

<!-- *********************************************************************************************** -->

		<div class="modal fade" id="show_o" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Your Orders</h5>
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
									<th scope="col">productID</th>							
									<th scope="col">quantity</th>
									<th scope="col">Total Price</th>
									<th scope="col">Date</th>
								</tr>
							</thead>
							<c:forEach begin="0" end="${o_no}" var="par" items="${o_list}">
								<tr>
									<th><c:out value="${par.order_id}" /></th>
									<td><c:out value="${par.product_id}" /></td>									
									<td><c:out value="${par.quantity}" /></td>
									<td class="font-weight-bold"> &#x20B9; <c:out value="${par.total_price}" /></td>
									<td class="font-weight-bold"><c:out value="${par.date}" /></td>
								</tr>
							</c:forEach>

							<tbody>
						</table>


						<h4>Your Bill: &#x20B9; ${bill}</h4>




					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- *********************************************************************** -->

<!-- SHow cart -->
<div class="modal fade" id="show_cart_items" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Your Cart Items</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<table class="table">

						<thead class="thead-dark">
							<tr>
								<th scope="col">CartID</th>
								<th scope="col">productID</th>
								<th scope="col">quantity</th>
								<th scope="col">Price</th>
								<th scope="col">Delete</th>
								<th scope="col">Buy</th>
							</tr>
						</thead>
						<c:forEach begin="0" end="${cart_no}" var="par" items="${cart_items}">
							<tr>
								<th><c:out value="${par.cart_id}" /></th>
								<td><c:out value="${par.product_id}" /></td>
								<td><c:out value="${par.quantity}" /></td>
								<td class="font-weight-bold">&#x20B9; <c:out value="${par.total_price}" /></td>
								<td>
								<a href="delete_cart_item/${par.cart_id}"> 
								<i class="fas fa-trash-alt warning" style="color:red"></i>
								</a>
								</td>
								<td>
									<a href="add_cart_item/${par.cart_id}">
									<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-plus-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									  <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
									  <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
									</svg>
									</a>
								</td>
							</tr>
						</c:forEach>

						<tbody>
					</table>




				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>




	<!-- ********************************************************************* -->

	<div class="modal fade" id="del_o" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Your Orders</h5>
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
								<th scope="col">productID</th>
								<th scope="col">quantity</th>
								<th scope="col">Total Price</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<c:forEach begin="0" end="${o_no}" var="par" items="${o_list}">
							<tr>
								<th><c:out value="${par.order_id}" /></th>
								<td><c:out value="${par.product_id}" /></td>
								<td><c:out value="${par.quantity}" /></td>
								<td><c:out value="${par.total_price}" /></td>
								<td><a href="delete_o/${par.order_id}"> <i
										class="fas fa-trash-alt" style="color:red"></i>
								</a></td>
							</tr>
						</c:forEach>

						<tbody>
					</table>




				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- ************************************************************************* -->









	</div>

	<br>
	<br>
	<br>
	<br>







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