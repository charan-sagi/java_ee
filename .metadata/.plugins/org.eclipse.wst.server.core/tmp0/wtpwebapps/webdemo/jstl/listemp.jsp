<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<%@taglib uri="jakarta.tags.sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Employees</title>
</head>
<body>
	<h1>Employees</h1>
	<sql:setDataSource var="mysql" driver="com.mysql.cj.jdbc.Driver" 
		url="jdbc:mysql://localhost:3306/feb26" user="root" password="root" />
	
	<sql:query var="emplist" dataSource="${mysql}">
		SELECT * FROM employees
	</sql:query>
	
	<ul>
		<c:forEach var="emp" items="${emplist.rows}">
			<li>${emp.employee_id}, ${emp.first_name}, ${emp.salary}</li>
		</c:forEach>
	</ul>
</body>
</html>