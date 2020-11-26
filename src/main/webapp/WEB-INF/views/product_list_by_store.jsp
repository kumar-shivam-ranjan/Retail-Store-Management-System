<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <title>Product List</title>

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
	
	
	
	
    <br><br><br>
     <br><br><br>
    <div class="container text-center">
   
				 <h4 style="color:white">Number of rows: ${p_no}</h4>
				<table class="table table-dark">
			 		
			 			<thead class="thead-dark">
						    <tr>
						      <th scope="col">ProductID</th>
						      <th scope="col">ExpiryDate</th>
						      <th scope="col">Price</th>
						      <th scope="col">SupplierID</th>
						      <th scope="col">Category</th>
						    </tr>
			  			</thead>
			  			
			  			
					  <tbody>
					  <c:forEach begin="0" end="${p_no}" var="par" items="${p}">
					  		<tr>
							<th>
							<c:out value="${par.product_id}"/>
							</th>
							<td>
							<c:out value="${par.expiry_date}"/>
							</td>
							<td>
							<c:out value="${par.price}"/>
							</td>
							<td>
							<c:out value="${par.supplier_id}"/>
							</td>
							<td>
							<c:out value="${par.category}"/>
							</td>
							</tr>
					  </c:forEach>
							
					  </tbody>
					</table>	
					 <a class="btn btn-primary btn-lg" href="/DbmsProject/CustomerHome" role="button">Go to Home</a>
    
  	    
		 	 </div>
	
<br>
<br>
<br>
<br>





  </body>
</html>