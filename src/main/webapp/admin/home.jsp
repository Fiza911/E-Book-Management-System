<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@ include file="Allcss.jsp"%>
<!-- Bootstrap CSS Link (if not already included) -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome for Icons -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet">
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%@ include file="navbar.jsp"%>

	<div class="container">
		<div class="row p-5">
			<!-- Add Books Option -->
			<div class="col-md-3">
				<a href="add_books.jsp">
					<div class="card shadow-sm">
						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i><br>
							<h4>Add Books</h4>
							---------------------
						</div>
					</div>
				</a>
			</div>

			<!-- All Books Option -->
			<div class="col-md-3">
				<a href="all_books.jsp">
					<div class="card shadow-sm">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-3x text-danger"></i><br>
							<h4>All Books</h4>
							---------------------
						</div>
					</div>
				</a>
			</div>

			<!-- Orders Option -->
			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card shadow-sm">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
							<h4>Orders</h4>
							---------------------
						</div>
					</div>
				</a>
			</div>

			<!-- Logout Option -->
			<div class="col-md-3">
				<div class="card shadow-sm">
					<div class="card-body text-center">
						<i class="fa-solid fa-right-from-bracket fa-3x text-primary"></i><br>
						<h4>Logout</h4>
						---------------------
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
