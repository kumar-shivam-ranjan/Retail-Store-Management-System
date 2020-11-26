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
<div class="container text-center">



			<br><br>
			<h3 style="color:white">Number of Search results: ${no}</h3>

							<table class="table table-dark">
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

									<c:forEach begin="0" end="${no}" var="par" items="${e}">
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
<a class="btn btn-primary btn-lg" href="/DbmsProject/AdminHome" role="button">Go to Home</a>
	


</div>

	
</body>
</html>