<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listing Students</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>

<div style="justify-content: center ">
<table class="table">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>


		<c:forEach var="student" items="${theStudents}">
			<c:url var="updateLink" value="/student/showUpdate">
				<c:param name="studentId" value="${student.id}"></c:param>
			</c:url>
			<c:url var="deleteLink" value="/student/delete">
				<c:param name="studentId" value="${student.id}"></c:param>
			</c:url>
			<tr>
				<td>${student.firstName}</td>
				<td>${student.lastName}</td>
				<td>${student.email}</td>
				<td><a href="${updateLink}"><button class="btn btn-outline-success">Update</button></a></td>
				<td><a href="${deleteLink}"><button class="btn btn-outline-danger">Delete</button></a></td>
			</tr>

		</c:forEach>

	</table>

	<a href="show"><button class="btn btn-outline-secondary">Add Student</button></a>

</div>
	
</body>
</html>