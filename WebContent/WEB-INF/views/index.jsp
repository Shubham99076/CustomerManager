<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"	rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"></script>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Manager</title>
</head>
<body>
<div align="center">

	
	<div class="container">
		<div class="col-md-offset-1 col-md-10">
			<h3 class="text-center">Customer Management</h3>
			<hr />
			
			<form method="get" action="search">
		<input type="text" name="keyword" /> &nbsp;
		<input type="submit" class="btn btn-primary" value="Search" />
	</form>
	
	<hr/>

			<input type="button" value="Add Customer"
				onclick="window.location.href='new'; return false;"
				class="btn btn-primary" /> <br />
			<br />
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Customer List</div>
				</div>
				<div class="panel-body">
					<table class="table table-striped table-bordered">
						<tr>
							<th>Full Name</th>
							<th>User Name</th>						
							<th>Mobile No</th>							
							<th>Email</th>
							<th>City</th>
							<th>Action</th>
						</tr>

						<!-- loop over and print our customers -->
					

							<c:forEach items="${listCustomer}" var="customer">

							<tr>
							
							<td>${customer.name}</td>
							<td>${customer.username}</td>
							<td>${customer.mobile}</td>
							<td>${customer.email}</td>
							<td>${customer.address}</td>

								<td>
								<a href="edit?id=${customer.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
								
									<a href="delete?id=${customer.id}" onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>

				</div>
			</div>
		</div>

	</div>
	<div class="footer">
		<p>Developed By Shubham Kumawat</p>
	</div>
	

</body>
</html>