<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="bootstrap.jsp"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees</title>
</head>
<body>
	<div class="container">
		<h1>Employees by Department [${deptId}]</h1>
		<p></p>
		<table class="table table-bordered">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Job</th>
				<th>Salary</th>
			</tr>
			<c:forEach var="emp" items="${employees}">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.name}</td>
					<td>${emp.jobId}</td>
					<td>${emp.salary}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>