<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body>
	<h1>Add Student Form</h1>
	
	<form:form action="add" modelAttribute="theStudent">
		First Name :<form:input path="firstName"/><br><br>
		Last Name :<form:input path="lastName"/><br><br>
		Email :<form:input path="email"/><br><br>
		<form:hidden path="id"></form:hidden>
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>