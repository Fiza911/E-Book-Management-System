<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Books</title>
<%@ include file="Allcss.jsp"%>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<h3 class="text-center">Hello Admin</h3>
	<table class="table">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>100</td>
				<td>@mdo</td>
				<td>
				<a href="#" class="btn btn-sm btn-primary">Edit</a> 
				<a href="#" class="btn btn-sm btn-danger">Delete</a>
				</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>300</td>
				<td>@fat</td>
				<td>
				<a href="#" class="btn btn-sm btn-primary">Edit</a> 
				<a href="#" class="btn btn-sm btn-danger">Delete</a>
				</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>250</td>
				<td>@twitter</td>
				<td>
				<a href="#" class="btn btn-sm btn-primary">Edit</a> 
				<a href="#" class="btn btn-sm btn-danger">Delete</a>
				</td>
			</tr>
</body>
</html>