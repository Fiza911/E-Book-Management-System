<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@ include file="Allcss.jsp"%>
<!-- Assuming this includes common CSS -->

<!-- Bootstrap CSS and Font Awesome -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet">

<style>
.form-container {
	border: 1px solid #ccc;
	border-radius: 8px;
	padding: 20px;
	background-color: #f9f9f9;
	max-width: 400px;
	margin: 20px auto;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

/* Reduce width and height of form fields */
.form-control {
	border: 1px solid #ccc;
	border-radius: 8px;
	background-color: #f9f9f9;
	max-width: 350px;
	margin: 10px 0;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.form-control-file {
	max-width: 350px;
}

.btn-primary {
	max-width: 200px;
}

/* Optional: Adjust width for the entire form */
.container {
	max-width: 450px;
}
</style>
</head>
<body style="background-color: #f0f2f2;">
	<%@ include file="navbar.jsp"%>
	<!-- Navigation bar for the admin -->

	<div class="container mt-5">
		<h2 class="text-center">Add Books</h2>

		<!-- Display success or error messages -->
		<%
		String successMessage = (String) request.getAttribute("successMessage");
		String errorMessage = (String) request.getAttribute("errorMessage");

		if (successMessage != null) {
		%>
		<div class="alert alert-success" role="alert">
			<%=successMessage%>
		</div>
		<%
		} else if (errorMessage != null) {
		%>
		<div class="alert alert-danger" role="alert">
			<%=errorMessage%>
		</div>
		<%
		}
		%>

		<!-- The form for adding a book -->
		<div class="form-container">
			<form action="../add_books" method="post"
				enctype="multipart/form-data">
				<!-- Book Title -->
				<div class="form-group">
					<label for="title">Book Title</label> <input type="text"
						class="form-control" id="title" name="bname" required>
				</div>

				<!-- Book Author -->
				<div class="form-group">
					<label for="author">Author</label> <input type="text"
						class="form-control" id="author" name="author" required>
				</div>

				<!-- Book Price -->
				<div class="form-group">
					<label for="price">Price</label> <input type="number"
						class="form-control" id="price" name="price" required>
				</div>

				<!-- Book Description 
            <div class="form-group">
                <label for="description"></label>
                <textarea class="form-control" id="description" name="description" rows="4" required></textarea>
            </div>

            <!-- Book Image -->
				<div class="form-group">
					<label for="image">Book Image</label> <input type="file"
						class="form-control" id="image" name="image" required>
				</div>

				<!-- Book Status -->
				<div class="form-group">
					<label for="image">Book Status</label> <input type="file"
						class="form-control" id="image" name="image" required>
				</div>
				<!-- Submit Button -->
				<button type="submit" class="btn btn-primary">Add Book</button>
			</form>
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
