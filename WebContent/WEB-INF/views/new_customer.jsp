<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>      
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"	rel="stylesheet">
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.min.js"></script>    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Customer</title>
</head>
<body>
		<div align="center">
		<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h3 class="text-center">Customer Management</h3>
			<br/>
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Add Customer</div>
				</div>
				<br/>
				<div class="panel-body">
					<form:form action="save" class="form-horizontal"
						method="post" modelAttribute="customer">

						<!-- need to associate this data with customer id -->
						<form:hidden path="id" />

						<div class="form-group">
							<label for="fullName" class="col-md-3 control-label">Full Name</label>
							<div class="col-md-9">
								<form:input path="name" class="form-control" />
							</div>
						</div>
						
						<div class="form-group">
							<label for="usderName" class="col-md-3 control-label">User Name</label>
							<div class="col-md-9">
								<form:input path="username" class="form-control" />
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="password" class="col-md-3 control-label">Password</label>
							<div class="col-md-9">
								<form:password  path="password" class="form-control" />
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="mobile" class="col-md-3 control-label">Mobile No.</label>
							<div class="col-md-9">
								<form:input path="mobile" class="form-control" />
							</div>
						</div>
						
						
						<div class="form-group">
							<label for="city" class="col-md-3 control-label">City</label>
							<div class="col-md-9">
								<form:input path="address" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="col-md-3 control-label">Email</label>
							<div class="col-md-9">
								<form:input path="email" class="form-control" />
							</div>
						</div>
						
						<br/>

						<div class="form-group">
							<!-- Button -->
							<div class="col-md-offset-3 col-md-9">
							
								<input type="submit" value="Save" class="btn btn-primary">
							</div>
						</div>

					</form:form>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>