<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="allcss_jss.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="Navbar.jsp"%>

		<h1>Please fill your note details</h1>
		<br>
		<!--add form  -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title">Note Title</label> <input required type="text"
					name="title" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter title" />
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea required name="content" id="content" class="form-control"
					style="height: 300px;" placeholder="enter your content"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>

	</div>


</body>
</html>