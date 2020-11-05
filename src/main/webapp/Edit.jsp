<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allcss_jss.jsp"%>

</head>
<body>

	<div class="container">
		<%@include file="Navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">Edit pAGE</h1>
	</div>

	<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	Session s = FactoryProvider.getFactory().openSession();
	Note note = (Note) s.get(Note.class, noteId);
	%>

	<!--update form  -->
	<form action="UpdateServlet" method="post">
	   <input value="<%=note.getId()%>" name="noteId" type="hidden">
		<div class="form-group">
			<label for="title">Note Title</label> <input required type="text"
				name="title" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter title" value="<%=note.getTitle() %>"/>
		</div>
		<div class="form-group">
			<label for="content">Note Content</label>
			<textarea required name="content" id="content" class="form-control"
				style="height: 300px;" placeholder="enter your content"> <%=note.getContent()%></textarea>
		</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-success">Save Changes</button>
		</div>
	</form>





</body>
</html>