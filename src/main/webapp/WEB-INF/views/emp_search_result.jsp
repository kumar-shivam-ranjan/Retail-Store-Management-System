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
    <title>Employee Search</title>

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
	
	
	
	
    <br><br><br><br><br>
    <div class="container text-center">
    
   		
    	<c:if test="${emp=='null'}">

		<div class="jumbotron">
		  <h1 class="display-4">OOPS!</h1>
		  <p class="lead">No Such Employee Exists</p>
		  <hr class="my-4">
		  <p>Try Your Search with another ID</p>
		    <a class="btn btn-primary btn-lg" href="/DbmsProject/AdminHome" role="button">Go to Home</a>
	
		</div>
	</c:if>

	<c:if test="${emp !='null'}">
				 
				<table class="table table-dark">
			 		
			 			<thead class="thead-dark">
						    <tr>
						      <th scope="col">ID</th>
						      <th scope="col">Name</th>
						      <th scope="col">email</th>
						      <th scope="col">joining_date</th>
						      <th scope="col">store_id</th>
						      <th scope="col">salary</th>
						     <th scope="col">phone</th>
						    </tr>
			  			</thead>
			  			
			  			
					  <tbody>
							<tr>
							<th>
							<c:out value="${emp.id}"/>
							</th>
							<td>
							<c:out value="${emp.name}"/>
							</td>
							<td>
							<c:out value="${emp.email}"/>
							</td>
							<td>
							<c:out value="${emp.joining_date}"/>
							</td>
							<td>
							<c:out value="${emp.store_id}"/>
							</td>
							<td>
							<c:out value="${emp.salary}"/>
							</td>
							<td>
							<c:out value="${emp.phone}"/>
							</td>
							</tr>
					  </tbody>
					</table>		    
		 	
	 <a class="btn btn-primary btn-lg" href="/DbmsProject/AdminHome" role="button">Go to Home</a>
	
	</c:if>
    
   
  </div>





  </body>
</html>